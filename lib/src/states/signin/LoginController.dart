// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/signin/LoginState.dart';

import '../../modules/index.dart';

class LoginController extends GetxController {
  final state = LoginState();
  final loginFormKey = GlobalKey<FormState>();
  void toggleObscure() {
    state.obscureText = !state.obscureText;
  }
}
