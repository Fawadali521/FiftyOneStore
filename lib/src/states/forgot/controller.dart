import 'package:fiftyonestores/src/states/forgot/state.dart';

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
