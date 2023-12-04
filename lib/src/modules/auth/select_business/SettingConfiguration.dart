// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/BranchDetails.dart';
import 'package:fiftyonestores/src/states/selecte_business/SelectBusinessController.dart';
import 'package:fiftyonestores/src/widgets/CustomDropDown.dart';

import '../../index.dart';

class SettingConfiguration extends StatelessWidget {
  SettingConfiguration({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.settingConfiguration,
          child: ResponsiveLayout(
            /// mobile view
            mobile: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sW(18), vertical: sH(32)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onPressed: () => Get.back(),
                  ),
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                          child: CustomCard(
                              widthPadding: 18,
                              title: 'Global Settings Configuration'.tr,
                              data: _customSettingConfiguration())),
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
                        child: SingleChildScrollView(
                            child: CustomCard(
                                title: 'Global Settings Configuration'.tr,
                                data: _customSettingConfiguration())),
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
                        child: SingleChildScrollView(
                            child: CustomCard(
                                title: 'Global Settings Configuration'.tr,
                                data: _customSettingConfiguration())),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customSettingConfiguration() {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(24)),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 24),
                    child: Image.asset(
                      currencyIcon,
                      height: 24,
                      width: 24,
                      color: Palette.primaryColor,
                    ),
                  ),
                  items: controller.state.selectCurrences,
                  selectedVal: controller.state.selectedCurency.value,
                  onChanged: (val) {
                    controller.changeCurrency(val!);
                  },
                  textStyle: controller.state.selectCurrences.first ==
                          controller.state.selectedCurency.value
                      ? TextStyles.titleSmall.copyWith(
                          color: Palette.grayColor,
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: sH(16)),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 24),
                    child: Image.asset(
                      timeZoneIcon,
                      height: 24,
                      width: 24,
                      color: Palette.primaryColor,
                    ),
                  ),
                  items: controller.state.selectTimeZones,
                  selectedVal: controller.state.selectedTimeZone.value,
                  onChanged: (val) {
                    controller.changeTimeZone(val!);
                  },
                  textStyle: controller.state.selectTimeZones.first ==
                          controller.state.selectedTimeZone.value
                      ? TextStyles.titleSmall.copyWith(
                          color: Palette.grayColor,
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: sH(16)),
          CustomTextField(
            hintText: 'Tax rate'.tr,
            onChange: (value) {
              controller.state.texRate = value;
            },
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Image.asset(
                texRateIcon,
                height: 24,
                width: 24,
                color: Palette.primaryColor,
              ),
            ),
          ),
          SizedBox(height: sH(16)),
          Row(
            children: [
              Expanded(
                child: CustomDropDown(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 24),
                    child: Image.asset(
                      yearStartIcon,
                      height: 24,
                      width: 24,
                      color: Palette.primaryColor,
                    ),
                  ),
                  items: controller.state.selectYearStarts,
                  selectedVal: controller.state.selectedYearStart.value,
                  onChanged: (val) {
                    controller.changeYearStart(val!);
                  },
                  textStyle: controller.state.selectYearStarts.first ==
                          controller.state.selectedYearStart.value
                      ? TextStyles.titleSmall.copyWith(
                          color: Palette.grayColor,
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: sH(24)),
          CustomButton(
            onTap: () {
              Get.to(() => BranchDetails());
            },
            text: 'Next'.tr,
          ),
        ],
      ),
    );
  }
}
