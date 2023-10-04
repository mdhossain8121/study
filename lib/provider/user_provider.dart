import 'package:flutter/cupertino.dart';
import '../model/user_model/user_model.dart';
import '../repo/remote/user_data.dart';

class UserProvider extends ChangeNotifier{
  List<UserModel> _users = [];
  List<UserModel> get allUserList => _users;

  bool isLoading = false;

  void getUsers() async {
    isLoading = true;
    try{
      UserData data = UserData();
      _users = await data.getUserList();
      isLoading = false;
    }catch(e){
      isLoading = false;
    }
    notifyListeners();
  }
}