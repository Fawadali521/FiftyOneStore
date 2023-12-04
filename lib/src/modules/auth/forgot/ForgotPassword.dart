// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/forgot/ForgotOtp.dart';
import 'package:fiftyonestores/src/states/forgot/ForgotController.dart';

import '../../index.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final ForgotController controller = Get.put(ForgotController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: ResponsiveLayout(
          /// mobile view
          mobile: Padding(
            padding: EdgeInsets.symmetric(horizontal: sW(18), vertical: sH(32)),
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
                        title: 'ForgotTitle'.tr,
                        data: _customForgotPassword()),
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
                          title: 'ForgotTitle'.tr,
                          data: _customForgotPassword()),
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
                        title: 'ForgotTitle'.tr,
                        data: _customForgotPassword(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customForgotPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(12)),
        Text(
          "ForgotBodyText".tr,
          style: TextStyles.titleSmall.copyWith(
            color: Palette.grayColor,
          ),
        ),
        SizedBox(height: sH(16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
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
            SizedBox(height: sH(24)),
            CustomButton(
              onTap: () {
                Get.to(() => ForgotOtp());
              },
              text: 'sendOtp'.tr,
            ),
          ],
        ),
      ],
    );
  }
}
