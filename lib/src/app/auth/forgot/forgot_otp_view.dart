import 'package:fiftyonestores/src/app/auth/forgot/forgot_update_view.dart';
import 'package:fiftyonestores/src/states/forgot/controller.dart';
import 'package:pinput/pinput.dart';

import '../../index.dart';

class ForgotOtpView extends StatelessWidget {
  ForgotOtpView({super.key});
  final ForgotController controller = Get.put(ForgotController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: ResponsiveLayout(
          /// mobile view
          mobile: Padding(
            padding: EdgeInsets.all(sW(32)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onPressed: () => Get.back(),
                ),
                Expanded(
                  child: Center(
                    child: _customOtpView(),
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
                      child: _customOtpView(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// desktop view
          desktop: Padding(
            padding: EdgeInsets.all(sH(80)),
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
                      child: _customOtpView(),
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
  Widget _customOtpView() {
    return CustomCard(
      title: 'otpTitle'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(12)),
          Text(
            "otpBodyText".tr,
            style: TextStyles.titleSmall.copyWith(
              color: Palette.grayColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: sH(32)),
          Pinput(
            defaultPinTheme: PinTheme(
              width: 56,
              height: 56,
              textStyle: TextStyles.titleLarge,
              decoration: BoxDecoration(
                color: Palette.bgTextFeildColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            length: 6,
            forceErrorState: true,
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            validator: (pin) {
              if (pin == '2224') return null;
              return 'Pin is incorrect';
            },
          ),
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {
              Get.to(() => ForgotUpdateView());
            },
            text: 'otpButton'.tr,
          ),
        ],
      ),
    );
  }
}
