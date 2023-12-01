import '../../app/index.dart';

class SignUpState extends LoadingState {
  final RxString _email = ''.obs;
  final RxBool _obscureText1 = true.obs;
  final RxBool _obscureText2 = true.obs;
  final RxString _newPassword = ''.obs;
  final RxString _confirmPassword = ''.obs;
  String? get email => _email.value.trim();
  bool get obscureText1 => _obscureText1.value;
  bool get obscureText2 => _obscureText2.value;
  String? get newPassword => _newPassword.value.trim();
  String? get confirmPassword => _confirmPassword.value.trim();
  set email(value) => _email.value = value;
  set obscureText1(value) => _obscureText1.value = value;
  set obscureText2(value) => _obscureText2.value = value;
  set newPassword(value) => _newPassword.value = value;
  set confirmPassword(value) => _confirmPassword.value = value;
}
