import 'package:fiftyonestores/src/app/auth/forgot/forgot_otp_view.dart';
import 'package:fiftyonestores/src/states/forgot/controller.dart';

import '../../index.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});
  final ForgotController controller = Get.put(ForgotController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: ResponsiveLayout(
          /// mobile view
          mobile: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: sW(32)),
              child: _customForgotPassword(),
            ),
          ),

          /// tablet view
          tablet: Center(
            child: SizedBox(
              width: 540,
              child: _customForgotPassword(),
            ),
          ),

          /// desktop view
          desktop: Center(
            child: SizedBox(
              width: 540,
              child: _customForgotPassword(),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customForgotPassword() {
    return CustomCard(
      title: 'ForgotTitle'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(12)),
          Text(
            "ForgotBodyText".tr,
            style: TextStyles.titleSmall.copyWith(
              color: Palette.grayColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: sH(32)),
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
                  ),
                ),
              ),
              SizedBox(height: sH(32)),
              CustomButton(
                onTap: () {
                  Get.to(() => ForgotOtpView());
                },
                text: 'sendOtp'.tr,
              ),
            ],
          ),
          SizedBox(height: sH(32)),
        ],
      ),
    );
  }
}
