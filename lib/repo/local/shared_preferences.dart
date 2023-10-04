import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {

  static SharedPreferences? _sharedPreferences;

  static const userName = "user_name";
  static const userFullName = "user_full_name";
  static const authToken = "auth_token";

  static Future<SharedPreferences> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }

  static setString(String key,String value) async{
    await _sharedPreferences?.setString(key, value);
  }

  static String getString(String key){
    return _sharedPreferences?.getString(key)??"";
  }

  static setInt(String key,int value) async{
    await _sharedPreferences?.setInt(key, value);
  }

  static int getInt(String key){
    return _sharedPreferences?.getInt(key)??0;
  }

}