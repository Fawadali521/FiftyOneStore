// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/forgot/ForgotState.dart';

import '../../modules/index.dart';

class ForgotController extends GetxController {
  final state = ForgotState();
  final forgotUpdateFormKey = GlobalKey<FormState>();
  void toggleObscure1() {
    state.obscureText1 = !state.obscureText1;
  }

  void toggleObscure2() {
    state.obscureText2 = !state.obscureText2;
  }
}
