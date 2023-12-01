import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'signInTitle': 'Let’s sign you in',
          'signUpTitle': 'Let’s sign up',
          'signInButton': 'Login',
          'email': 'Email',
          'passwrod': 'Password',
          'signup': 'Sign up',
          'signin': 'Sign in',
          'forgot': 'Forgot Password?',
          'dontAccount': 'Don’t have an account? ',
          'alreadyAccount': 'Already have an account? ',
          'accept': 'By signing in, you accept ',
          'termsandservices': 'our terms of services ',
          'and': 'and ',
          'privacypolicy': '\nprivacy policy',
          'ForgotTitle': 'Forgot password',
          'ForgotBodyText':
              'Please enter your email address and\nwe will send you OTP for reset',
          'sendOtp': 'Send OTP',
          'otpTitle': 'OTP authentication',
          'otpBodyText': 'Enter verify code here',
          'otpButton': 'Verify OTP',
          'Update password': 'Update password',
          'Updatepasswordbody':
              'Your new password must be different\nfrom previous used password',
          'newPassword': 'New password',
          'confirmPassword': 'Confirm password',
          'Continue': 'Continue',
        },
      };
}
