import 'dart:convert';

import 'package:study/model/study/exam_list_Item_model.dart';
import 'package:study/repo/local/shared_preferences.dart';

import 'package:study/model/study/api_pagination_response_model.dart';
import 'package:http/http.dart' as http;

import 'api_end_point.dart';

class ExamRepo{
  Future<ApiPaginationResponseModel<ExamListItemModel?>?> getExamList() async{
    ApiPaginationResponseModel<ExamListItemModel?>? examList;
    try{
      final response = await http.get(
        Uri.parse(ApiEndPoint.examList),
        headers: <String,String>{
          'Authorization': SharedPreferencesUtil.getString(SharedPreferencesUtil.authToken),
          'Content-Type': 'application/json; charset=UTF-8'
        }
      );

      dynamic jsonData = jsonDecode(response.body);
      examList = ApiPaginationResponseModel<ExamListItemModel>.fromJson(jsonData, (item) => ExamListItemModel.fromJson(item));
      return examList;
    }catch(ex){
      print("catch getExamList $ex");
      rethrow;
    }
  }
}