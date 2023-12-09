import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:get_it/get_it.dart';
import 'package:test003/screen/circle.dart';
import 'package:test003/shared_preference/shared_preference.dart';
import 'package:test003/shared_preference/shared_preference_extension.dart';

class LoginController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController phone = TextEditingController();
  // TextEditingController country = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  Future<void> nextButtonClicked({
    required BuildContext context,
  }) async {
    var map = {
      "first_name": firstName.text,
      "last_name": lastName.text,
      "email_address": emailAddress.text,
      "phone": phone.text,
      "password": password.text,
      "confirmPassword": confirmPassword.text,
    };

    var sharedPreference = GetIt.I<PreferenceHelper>();

    await sharedPreference.saveUserDetails(map: map);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Circle();
    }));
  }
}
