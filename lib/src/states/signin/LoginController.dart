// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/signin/LoginState.dart';

import '../../modules/index.dart';

class LoginController extends GetxController {
  final state = LoginState();
  final loginFormKey = GlobalKey<FormState>();
  void toggleObscure() {
    state.obscureText = !state.obscureText;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required'.tr;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'emailaddress'.tr;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required'.tr;
    }

    return null;
  }
}
