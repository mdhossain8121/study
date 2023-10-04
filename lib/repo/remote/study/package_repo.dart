import 'dart:convert';

import 'package:study/model/study/package/package_list_item_model.dart';

import 'package:study/model/study/api_response_model.dart';

import 'package:http/http.dart' as http;
import 'package:study/repo/local/shared_preferences.dart';
import 'package:study/repo/remote/study/api_end_point.dart';

class PackageRepo{

  Future<ApiResponseModel<PackageListItemModel>> getPackages() async{
    ApiResponseModel<PackageListItemModel> apiResponseModel;
    try{
      final response = await http.get(
        Uri.parse(ApiEndPoint.packageList),
        headers: <String,String>{
          'Authorization': SharedPreferencesUtil.getString(SharedPreferencesUtil.authToken),
          'Content-Type': 'application/json; charset=UTF-8'
        }
      );

      dynamic jsonData = jsonDecode(response.body);
      apiResponseModel = ApiResponseModel<PackageListItemModel>.fromJson(jsonData, (item) => PackageListItemModel.fromJson(item));
      return apiResponseModel;
    }catch(ex){
      print(ex);
      rethrow;
    }
  }

}