import 'package:fiftyonestores/src/states/signin/state.dart';

import '../../modules/index.dart';

class LoginController extends GetxController {
  final state = LoginState();
  final loginFormKey = GlobalKey<FormState>();
  void toggleObscure() {
    state.obscureText = !state.obscureText;
  }
}
