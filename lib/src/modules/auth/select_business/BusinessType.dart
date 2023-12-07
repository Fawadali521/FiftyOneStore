// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/BusinessInfo.dart';

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
              padding: EdgeInsets.symmetric(horizontal: sW(18)),
              child: CustomCard(
                  widthPadding: 18,
                  title: 'BusinessType'.tr,
                  data: _customBusinessType()),
            ),
          ),

          /// tablet view
          tablet: Center(
            child: SizedBox(
              width: 540,
              child: CustomCard(
                  title: 'BusinessType'.tr, data: _customBusinessType()),
            ),
          ),

          /// desktop view
          desktop: Center(
            child: SizedBox(
              width: 540,
              child: CustomCard(
                  title: 'BusinessType'.tr, data: _customBusinessType()),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customBusinessType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(12)),
        Text(
          "businessTypeBodyText".tr,
          style: TextStyles.titleSmall.copyWith(
            color: Palette.grayColor,
          ),
        ),
        SizedBox(height: sH(16)),
        Obx(
          () => Row(
            children: [
              Expanded(
                child: CustomSelectBusinessBustton(
                  onTap: controller.selectTypeCorporate,
                  title: 'corporate'.tr,
                  icon: corporateIcon,
                  backGroundColor: controller.state.isCorporate.value
                      ? Palette.bgTextFeildColor
                      : Palette.bgWhiteColor,
                  color: controller.state.isCorporate.value
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
                  icon: individualIcon,
                  backGroundColor: controller.state.isIndividual.value
                      ? Palette.bgTextFeildColor
                      : Palette.bgWhiteColor,
                  color: controller.state.isIndividual.value
                      ? Palette.primaryColor
                      : Palette.grayColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            if (controller.state.isCorporate.value ||
                controller.state.isIndividual.value) {
              Get.to(() => BusinessInfo());
            } else {
              SnackBarToast(
                message: 'Please select business type',
              );
            }
          },
          text: 'Next'.tr,
        ),
      ],
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
        padding: EdgeInsets.symmetric(vertical: sH(18)),
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
              height: sH(32),
              width: sW(32),
              color: color,
            ),
            SizedBox(height: sH(12)),
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
