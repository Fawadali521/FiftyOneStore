import 'package:fiftyonestores/src/states/forgot/controller.dart';

import '../../index.dart';

class ForgotUpdateView extends StatelessWidget {
  ForgotUpdateView({super.key});
  final ForgotController controller = Get.put(ForgotController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Obx(
          () => Form(
            key: controller.forgotUpdateFormKey,
            child: ResponsiveLayout(
              /// mobile view
              mobile: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: sW(32)),
                  child: _customForgotUpdatePassword(),
                ),
              ),

              /// tablet view
              tablet: Center(
                child: SizedBox(
                  width: 540,
                  child: _customForgotUpdatePassword(),
                ),
              ),

              /// desktop view
              desktop: Center(
                child: SizedBox(
                  width: 540,
                  child: _customForgotUpdatePassword(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customForgotUpdatePassword() {
    return CustomCard(
      title: 'Update password'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Updatepasswordbody".tr,
            style: TextStyles.titleSmall.copyWith(
              color: Palette.grayColor,
              fontSize: 16,
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
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {},
            text: 'Continue'.tr,
          ),
        ],
      ),
    );
  }
}
