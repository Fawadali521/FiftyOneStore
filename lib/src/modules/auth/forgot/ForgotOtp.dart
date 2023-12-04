// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/forgot/ForgotUpdate.dart';
import 'package:fiftyonestores/src/states/forgot/ForgotController.dart';
import 'package:pinput/pinput.dart';

import '../../index.dart';

class ForgotOtp extends StatelessWidget {
  ForgotOtp({super.key});
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
                      title: 'otpTitle'.tr,
                      data: _customOtpView(),
                    ),
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
                          title: 'otpTitle'.tr, data: _customOtpView()),
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
                          title: 'otpTitle'.tr, data: _customOtpView()),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(12)),
        Text(
          "otpBodyText".tr,
          style: TextStyles.titleSmall.copyWith(
            color: Palette.grayColor,
          ),
        ),
        SizedBox(height: sH(16)),
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
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            Get.to(() => ForgotUpdate());
          },
          text: 'otpButton'.tr,
        ),
      ],
    );
  }
}
