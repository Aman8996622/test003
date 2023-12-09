import 'dart:convert';

import 'package:test003/shared_preference/const.dart';
import 'package:test003/shared_preference/shared_preference.dart';

extension LoginPreferences on PreferenceHelper {
  Map<String, dynamic> get userDetails {
    String? value = sharedPreferences.getString(Const.userDetials);

    Map<String, dynamic> jsonMap = json.decode(value ?? "");

    return jsonMap;
  }





  Future<bool> saveUserDetails({required Map<String, dynamic> map}) async {
    String user = json.encode(map);

    return  await  sharedPreferences.setString(Const.userDetials, user);
  }
}
