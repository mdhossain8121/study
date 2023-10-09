import 'dart:convert';

import 'package:study/model/study/package/package_model.dart';

import 'package:study/model/study/api_response_model.dart';

import 'package:http/http.dart' as http;
import 'package:study/repo/local/shared_preferences.dart';
import 'package:study/repo/remote/study/api_end_point.dart';

class PackageRepo{

  Future<ApiResponseModel<List<PackageListItemModel?>?>?> getPackages() async{
    ApiResponseModel<List<PackageListItemModel?>?>? apiResponseModel;
    try{
      final response = await http.get(
        Uri.parse(ApiEndPoint.packageList),
        headers: <String,String>{
          'Authorization': SharedPreferencesUtil.getString(SharedPreferencesUtil.authToken),
          'Content-Type': 'application/json; charset=UTF-8'
        }
      );

      dynamic jsonData = jsonDecode(response.body);
      apiResponseModel = ApiResponseModel<List<PackageListItemModel?>?>.fromJson(jsonData, (item) {
        print("PackageRepo1 $item");
        List<PackageListItemModel?>? list = <PackageListItemModel?>[];
        return null;

      });


      return apiResponseModel;
    }catch(ex){
      print(ex);
      rethrow;
    }
  }

}