import 'dart:convert';

import 'package:shared_p_logic/models/signUp_model.dart';
import 'package:shared_p_logic/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  // #SignUpRelated
  static void storeSignUp(SignUp signUp)async{
    SharedPreferences prefUp = await SharedPreferences.getInstance();
    String userName = jsonEncode(signUp);
    prefUp.setString('signUp', userName);

  }
    static Future<SignUp> loadSignUp()async{
    SharedPreferences prefUp = await SharedPreferences.getInstance();
    String? signUp = prefUp.getString('signUp');
     Map<String,dynamic> map = jsonDecode(signUp!);
     return SignUp.fromJson(map);
    }
    static removeSignUp()async{
    SharedPreferences prefUp = await SharedPreferences.getInstance();
    prefUp.remove('signUp');
    }


  // #objectRelated
  static void storeUser(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String userName = jsonEncode(user);
    pref.setString('user', userName);
  }

  static Future<User?> loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('user');
    if (stringUser == null) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('user');
  }

  // #nameRelated
  static storeName(String name) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', name);
  }

  static Future<String?> loadName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('name');
  }

  static Future<bool> removeName()async{
    SharedPreferences pref =  await SharedPreferences.getInstance();
    return pref.remove('name');
  }
}
