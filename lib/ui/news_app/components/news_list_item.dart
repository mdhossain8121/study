import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:study/model/news_model/NewsModel.dart';
import 'package:study/ui/news_app/news_details.dart';

class NewsListItem extends StatelessWidget {

  final Article article;
  const NewsListItem({Key? key,required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails(article: article)));
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: 250,
                width: double.infinity,
                imageUrl: article.urlToImage.toString(),
                fit: BoxFit.fitWidth,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        article.source?.name??"".toString(),
                        style: const TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(article.publishedAt.toString()),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Written by : ${article.author??"Anonymous"}"),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("${article.title}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
