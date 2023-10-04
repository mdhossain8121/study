import 'dart:convert';

import 'package:study/constant/api_constant.dart';

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../../model/user_model/user_model.dart';

class UserData{

  Future<List<UserModel>> getUserList() async{
    List<UserModel> userList = [];
    try{
      var request = http.Request('GET',Uri.parse(ApiConstant.userList));
      http.StreamedResponse response = await request.send();
      if(response.statusCode==200){
        var rawData = await response.stream.bytesToString();
        List<dynamic> data= jsonDecode(rawData);
        for (var element in data) {
          UserModel userModel = UserModel.fromJson(element);
          userList.add(userModel);
        }
      }
      return userList;
    }catch(e){
      rethrow;
    }
  }
}