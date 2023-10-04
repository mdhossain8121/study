import 'dart:convert';

import 'package:study/repo/remote/study/api_end_point.dart';

import '../../../model/study/user_model.dart';
import 'package:http/http.dart' as http;

class AuthRepo {

  Future<UserModel?> getLoginResponse(String userName, String password, String token) async {
    UserModel? userModel;
    try{
      Map data = {
        'email':userName,
        'password':password,
        'firebase_token':token,
      };
      var body = json.encode(data);
      final response = await http.post(
        Uri.parse(ApiEndPoint.login),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body
      );

      if(response.statusCode==200){
        dynamic data = jsonDecode(response.body);
        userModel = UserModel.fromJson(data);
      }
      return userModel;
    }catch(ex){
      rethrow;
    }

  }

}