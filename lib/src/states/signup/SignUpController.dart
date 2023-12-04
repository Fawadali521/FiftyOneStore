// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/signup/SignUpState.dart';

import '../../modules/index.dart';

class SignUpController extends GetxController {
  final state = SignUpState();
  final signUpFormKey = GlobalKey<FormState>();
  void toggleObscure1() {
    state.obscureText1 = !state.obscureText1;
  }

  void toggleObscure2() {
    state.obscureText2 = !state.obscureText2;
  }
}
