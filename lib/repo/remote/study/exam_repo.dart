import 'dart:convert';

import 'package:study/model/study/exam_list_Item_model.dart';
import 'package:study/repo/local/shared_preferences.dart';

import '../../../model/study/api_pagination_response_model.dart';
import 'package:http/http.dart' as http;

import 'api_end_point.dart';

class ExamRepo{
  Future<ApiPaginationResponseModel<ExamListItemModel?>?> getExamList() async{
    ApiPaginationResponseModel<ExamListItemModel?>? examList;
    try{
      print('try getExamList '+SharedPreferencesUtil.getString(SharedPreferencesUtil.authToken));
      final response = await http.get(
        Uri.parse(ApiEndPoint.examList),
        headers: <String,String>{
          'Authorization': SharedPreferencesUtil.getString(SharedPreferencesUtil.authToken),
          'Content-Type': 'application/json; charset=UTF-8'
        }
      );
      print(response.body);
      if(response.statusCode==200){
        dynamic jsonData = jsonDecode(response.body);
        if(jsonData['data']!=null){
          print("getExamList if $jsonData");
          examList = ApiPaginationResponseModel<ExamListItemModel>.fromJson(jsonData, (p0) => ExamListItemModel.fromJson(p0));
        }
      }
      // else{
      //   examList = ApiPaginationResponseModel();
      //   examList.message = response.body;
      // }
      return examList;
    }catch(ex){
      print("catch getExamList $ex");
      rethrow;
    }
  }
}