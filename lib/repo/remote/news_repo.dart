import 'dart:convert';

import 'package:study/constant/api_constant.dart';
import 'package:http/http.dart';

import '../../model/news_model/NewsModel.dart';

class NewsRepo{

  Future<NewsModel> getAllNews() async {
    try{
      Response response = await get(Uri.parse(ApiConstant.allNews));
      if(response.statusCode==200){
        Map<String,dynamic> jsonData = jsonDecode(response.body);
        NewsModel newsModel = NewsModel.fromJson(jsonData);
        return newsModel;
      }else{
        throw "No data found";
      }
    }catch(ex){
      rethrow;
    }
  }

  Future<NewsModel> getBreakingNews() async {
    try{
      Response response = await get(Uri.parse(ApiConstant.breakingNews));
      if(response.statusCode==200){
        Map<String,dynamic> jsonData = jsonDecode(response.body);
        NewsModel newsModel = NewsModel.fromJson(jsonData);
        return newsModel;
      }else{
        throw "No data found";
      }
    }catch(ex){
      rethrow;
    }
  }
}