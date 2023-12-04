import 'package:fiftyonestores/src/modules/auth/forgot/forgot_password_view.dart';
import 'package:fiftyonestores/src/modules/auth/signup/signup_view.dart';
import 'package:fiftyonestores/src/states/signin/controller.dart';

import '../../index.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Obx(
          () => Form(
            key: controller.loginFormKey,
            child: ResponsiveLayout(
              /// mobile view
              mobile: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: sW(18)),
                  child: CustomCard(
                    widthPadding: 18,
                    title: 'signInTitle'.tr,
                    data: _customSignIn(context),
                  ),
                ),
              ),

              /// tablet view
              tablet: Center(
                child: SizedBox(
                  width: 540,
                  child: CustomCard(
                      title: 'signInTitle'.tr, data: _customSignIn(context)),
                ),
              ),

              /// desktop view
              desktop: Center(
                child: SizedBox(
                  width: 540,
                  child: CustomCard(
                      title: 'signInTitle'.tr, data: _customSignIn(context)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customSignIn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(32)),
        CustomTextField(
          hintText: 'email'.tr,
          onChange: (value) {
            controller.state.email = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              emailIcon,
              height: 24,
              width: 24,
            ),
          ),
        ),
        SizedBox(height: sH(32)),
        CustomTextField(
          hintText: 'passwrod'.tr,
          onChange: (value) {
            controller.state.password = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              passwordIcon,
              height: 24,
              width: 24,
            ),
          ),
          obscureText: controller.state.obscureText,
          suffixIcon: IconButton(
            padding: const EdgeInsets.only(right: 16, left: 24),
            onPressed: controller.toggleObscure,
            icon: Icon(
              controller.state.obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Palette.grayColor,
            ),
          ),
        ),
        SizedBox(height: sH(18)),
        Row(
          children: [
            Text(
              "dontAccount".tr,
              style: TextStyles.titleSmall,
            ),
            InkWell(
              onTap: () => Get.to(() => SignUpView()),
              child: Text(
                "signup".tr,
                style: TextStyles.titleSmall.copyWith(
                  color: Palette.primaryColor,
                ),
              ),
            ),
            const Spacer(),
            MediaQuery.of(context).size.width > 600
                ? InkWell(
                    onTap: () => Get.to(() => ForgotPasswordView()),
                    child: Text(
                      "forgot".tr,
                      style: TextStyles.titleSmall.copyWith(
                        color: Palette.primaryColor,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
        MediaQuery.of(context).size.width <= 600
            ? SizedBox(height: sH(12))
            : const SizedBox.shrink(),
        MediaQuery.of(context).size.width <= 600
            ? InkWell(
                onTap: () => Get.to(() => ForgotPasswordView()),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "forgot".tr,
                    style: TextStyles.titleSmall.copyWith(
                      color: Palette.primaryColor,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
        SizedBox(height: sH(32)),
        CustomButton(
          onTap: () {},
          text: 'signInButton'.tr,
        ),
        SizedBox(height: sH(32)),
        Align(
          alignment: Alignment.center,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyles.titleSmall.copyWith(
                color: Palette.grayColor,
              ),
              children: [
                TextSpan(
                  text: 'accept'.tr,
                ),
                TextSpan(
                  text: 'termsandservices'.tr,
                  style: TextStyles.titleSmall
                      .copyWith(color: Palette.primaryColor),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: 'and'.tr,
                ),
                TextSpan(
                  text: 'privacypolicy'.tr,
                  style: TextStyles.titleSmall
                      .copyWith(color: Palette.primaryColor),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
