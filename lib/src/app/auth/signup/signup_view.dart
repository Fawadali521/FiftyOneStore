import 'package:fiftyonestores/src/app/auth/select_business/business_type.dart';
import 'package:fiftyonestores/src/app/auth/signin/signin_view.dart';
import 'package:fiftyonestores/src/states/signup/controller.dart';

import '../../index.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
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
                  padding: EdgeInsets.symmetric(horizontal: sW(32)),
                  child: _customSignUp(),
                ),
              ),

              /// tablet view
              tablet: Center(
                child: SizedBox(
                  width: 540,
                  child: _customSignUp(),
                ),
              ),

              /// desktop view
              desktop: Center(
                child: SizedBox(
                  width: 540,
                  child: _customSignUp(),
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
    return CustomCard(
      title: 'signUpTitle'.tr,
      data: Column(
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
          SizedBox(height: sH(32)),
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
          SizedBox(height: sH(12)),
          Row(
            children: [
              Text(
                "alreadyAccount".tr,
                style: TextStyles.titleSmall,
              ),
              InkWell(
                onTap: () => Get.to(() => SignInView()),
                child: Text(
                  "signin".tr,
                  style: TextStyles.titleSmall.copyWith(
                    color: Palette.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {
              Get.to(() => BusinessType());
            },
            text: 'signup'.tr,
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
      ),
    );
  }
}
