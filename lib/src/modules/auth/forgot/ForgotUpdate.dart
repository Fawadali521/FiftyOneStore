// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/signin/SignIn.dart';
import 'package:fiftyonestores/src/states/forgot/ForgotController.dart';

import '../../index.dart';

class ForgotUpdate extends StatelessWidget {
  ForgotUpdate({super.key});
  final ForgotController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Obx(
          () => Form(
            key: controller.forgotUpdateFormKey,
            child: ResponsiveLayout(
              /// mobile view
              mobile: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: sH(32), horizontal: sW(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(
                      onPressed: () => Get.back(),
                    ),
                    Expanded(
                      child: Center(
                        child: CustomCard(
                            widthPadding: 18,
                            title: 'Update password'.tr,
                            data: _customForgotUpdatePassword()),
                      ),
                    ),
                  ],
                ),
              ),

              /// tablet view
              tablet: Padding(
                padding: EdgeInsets.all(sH(40)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(
                      onPressed: () => Get.back(),
                    ),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 540,
                          child: CustomCard(
                              title: 'Update password'.tr,
                              data: _customForgotUpdatePassword()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// desktop view
              desktop: Padding(
                padding: EdgeInsets.all(sH(60)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(
                      onPressed: () => Get.back(),
                    ),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 540,
                          child: CustomCard(
                              title: 'Update password'.tr,
                              data: _customForgotUpdatePassword()),
                        ),
                      ),
                    ),
                  ],
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(12)),
        Text(
          "Updatepasswordbody".tr,
          style: TextStyles.titleSmall.copyWith(
            color: Palette.grayColor,
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'newPassword'.tr,
          onChange: (value) {
            controller.state.newPassword = value;
          },
          validator: controller.validatePassword,
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
        SizedBox(height: sH(12)),
        CustomTextField(
          hintText: 'confirmPassword'.tr,
          onChange: (value) {
            controller.state.confirmPassword = value;
          },
          validator: controller.validateConfirmPassword,
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
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            if (controller.forgotUpdateFormKey.currentState!.validate()) {
              SnackBarToast(
                message: 'Password updated successfully'.tr,
              );
              Get.offAll(() => SignIn());
            }
          },
          text: 'Continue'.tr,
        ),
      ],
    );
  }
}
