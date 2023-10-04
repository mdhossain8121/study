import 'package:flutter/material.dart';
import 'package:study/model/news_model/NewsModel.dart';
import 'package:study/repo/remote/news_repo.dart';
import 'package:study/ui/news_app/components/news_list_item.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);
  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  NewsRepo newsRepo = NewsRepo();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsRepo.getAllNews(),
      builder: (context, snapshot) {
        if(snapshot.hasData && snapshot.data!=null){
          NewsModel newsModel = snapshot.data as NewsModel;
          List<Article> articles = newsModel.articles??[];
          return ListView.builder(itemBuilder: (context, index) {
            return NewsListItem(article: articles[index]);
          },itemCount: articles.length);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
