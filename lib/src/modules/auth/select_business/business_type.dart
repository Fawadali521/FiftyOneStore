import 'package:fiftyonestores/src/modules/auth/select_business/business_info.dart';
import 'package:fiftyonestores/src/states/select_business/controller.dart';

import '../../index.dart';

class BusinessType extends StatelessWidget {
  BusinessType({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: ResponsiveLayout(
          /// mobile view
          mobile: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: sW(32)),
              child: _customBusinessType(),
            ),
          ),

          /// tablet view
          tablet: Center(
            child: SizedBox(
              width: 540,
              child: _customBusinessType(),
            ),
          ),

          /// desktop view
          desktop: Center(
            child: SizedBox(
              width: 540,
              child: _customBusinessType(),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customBusinessType() {
    return CustomCard(
      title: 'BusinessType'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(12)),
          Text(
            "businessTypeBodyText".tr,
            style: TextStyles.titleSmall.copyWith(
              color: Palette.grayColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: sH(32)),
          Obx(
            () => Row(
              children: [
                Expanded(
                  child: CustomSelectBusinessBustton(
                    onTap: controller.selectTypeCorporate,
                    title: 'corporate'.tr,
                    icon: corporateIcon,
                    backGroundColor: controller.state.isCorporate
                        ? Palette.bgTextFeildColor
                        : Palette.bgWhiteColor,
                    color: controller.state.isCorporate
                        ? Palette.primaryColor
                        : Palette.grayColor,
                  ),
                ),
                SizedBox(
                  width: sW(16),
                ),
                Expanded(
                  child: CustomSelectBusinessBustton(
                    onTap: controller.selectTypeIndividual,
                    title: 'individual'.tr,
                    icon: corporateIcon,
                    backGroundColor: controller.state.isIndividual
                        ? Palette.bgTextFeildColor
                        : Palette.bgWhiteColor,
                    color: controller.state.isIndividual
                        ? Palette.primaryColor
                        : Palette.grayColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {
              Get.to(() => BusinessInfoView());
            },
            text: 'Next'.tr,
          ),
        ],
      ),
    );
  }
}

class CustomSelectBusinessBustton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final Color backGroundColor;
  final Color color;
  const CustomSelectBusinessBustton({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
    required this.backGroundColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: sH(25)),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderStyles.medium,
          border: Border.all(
            color: color,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: sH(40),
              width: sW(40),
              color: color,
            ),
            SizedBox(height: sH(15)),
            Text(
              title,
              style: TextStyles.titleLarge.copyWith(color: color),
            )
          ],
        ),
      ),
    );
  }
}
