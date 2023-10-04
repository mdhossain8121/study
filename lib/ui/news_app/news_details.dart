import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:study/model/news_model/NewsModel.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetails extends StatefulWidget {

  final Article article;

  const NewsDetails({Key? key,required this.article}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("${widget.article.title}"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CachedNetworkImage(
                height: 250,
                width: double.infinity,
                imageUrl: widget.article.urlToImage.toString(),
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
                        widget.article.source?.name??"".toString(),
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(widget.article.publishedAt.toString()),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Written by : ${widget.article.author??"Anonymous"}"),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("${widget.article.title}"),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("${widget.article.description}"),
                ),
              ),
              ElevatedButton(onPressed: () async {
                final Uri uri = Uri.parse(widget.article.url.toString());
                log(widget.article.url.toString());
                if(!await launchUrl(uri)){
                  throw Exception("Url has been expired");
                }
              }, child: const Text("Read More"))
            ],
          ),
        ),
      ),
    );
  }
}
