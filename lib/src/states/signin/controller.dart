import 'package:fiftyonestores/src/states/signin/state.dart';

import '../../app/index.dart';

class LoginController extends GetxController {
  final state = LoginState();
  final loginFormKey = GlobalKey<FormState>();
  void toggleObscure() {
    state.obscureText = !state.obscureText;
  }
}
