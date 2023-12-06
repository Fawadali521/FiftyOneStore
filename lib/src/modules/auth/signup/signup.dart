// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/BusinessType.dart';
import 'package:fiftyonestores/src/modules/auth/signin/SignIn.dart';
import 'package:fiftyonestores/src/states/signup/SignUpController.dart';

import '../../index.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Obx(
          () => Form(
            key: controller.signUpFormKey,
            child: ResponsiveLayout(
              /// mobile view
              mobile: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: sW(18)),
                  child: CustomCard(
                    widthPadding: 18,
                    title: 'signUpTitle'.tr,
                    data: _customSignUp(),
                  ),
                ),
              ),

              /// tablet view
              tablet: Center(
                child: SizedBox(
                  width: 540,
                  child: CustomCard(
                    title: 'signUpTitle'.tr,
                    data: _customSignUp(),
                  ),
                ),
              ),

              /// desktop view
              desktop: Center(
                child: SizedBox(
                  width: 540,
                  child: CustomCard(
                    title: 'signUpTitle'.tr,
                    data: _customSignUp(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customSignUp() {
    return ListView(
      shrinkWrap: true,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),
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
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'newPassword'.tr,
          onChange: (value) {
            controller.state.newPassword = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              passwordIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
          obscureText: controller.state.obscureText1,
          suffixIcon: IconButton(
            padding: const EdgeInsets.only(right: 16, left: 24),
            onPressed: controller.toggleObscure1,
            icon: Icon(
              controller.state.obscureText1
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Palette.grayColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'confirmPassword'.tr,
          onChange: (value) {
            controller.state.confirmPassword = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              passwordIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
          obscureText: controller.state.obscureText2,
          suffixIcon: IconButton(
            padding: const EdgeInsets.only(right: 16, left: 24),
            onPressed: controller.toggleObscure2,
            icon: Icon(
              controller.state.obscureText2
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
              "alreadyAccount".tr,
              style: TextStyles.titleSmall,
            ),
            InkWell(
              onTap: () => Get.to(() => SignIn()),
              child: Text(
                "signin".tr,
                style: TextStyles.titleSmall.copyWith(
                  color: Palette.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            Get.to(() => BusinessType());
          },
          text: 'signup'.tr,
        ),
        SizedBox(height: sH(18)),
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
