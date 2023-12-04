import '../../modules/index.dart';

class LoginState extends LoadingState {
  final RxBool _obscureText = true.obs;
  final RxString _email = ''.obs;
  final RxString _password = ''.obs;
  bool get obscureText => _obscureText.value;
  String? get email => _email.value.trim();
  String? get password => _password.value.trim();
  set obscureText(value) => _obscureText.value = value;
  set email(value) => _email.value = value;
  set password(value) => _password.value = value;
}
