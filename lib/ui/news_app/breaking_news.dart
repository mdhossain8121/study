import 'package:flutter/material.dart';
import 'package:study/model/news_model/NewsModel.dart';
import 'package:study/repo/remote/news_repo.dart';
import 'package:study/ui/news_app/components/news_list_item.dart';

class BreakingNews extends StatefulWidget {
  const BreakingNews({Key? key}) : super(key: key);
  @override
  State<BreakingNews> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNews> {
  NewsRepo newsRepo = NewsRepo();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsRepo.getBreakingNews(),
      builder: (context, snapshot) {
        if(snapshot.hasData && snapshot.data!=null){
          NewsModel newsModel = snapshot.data as NewsModel;
          List<Article> articles = newsModel.articles??[];
          return ListView.builder(itemBuilder: (context, index) {
              return NewsListItem(article: articles[index]);
            }, itemCount: articles.length,);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
