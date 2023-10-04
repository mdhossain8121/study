import 'package:flutter/material.dart';
import 'package:study/ui/news_app/all_news.dart';
import 'package:study/ui/news_app/breaking_news.dart';

class NewsHomepage extends StatefulWidget {
  const NewsHomepage({Key? key}) : super(key: key);

  @override
  State<NewsHomepage> createState() => _NewsHomepageState();
}

class _NewsHomepageState extends State<NewsHomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("News Homepage"),
            bottom: TabBar(
              tabs: [
                Tab(text: "All News"),
                Tab(text: "Breaking News"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AllNews(),BreakingNews()
            ],
          )
        ),
      ));
    }
}
