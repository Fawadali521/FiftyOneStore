import 'package:fiftyonestores/src/app/auth/select_business/branch_details.dart';
import 'package:fiftyonestores/src/states/select_business/controller.dart';
import 'package:fiftyonestores/src/widgets/custom_drop_down.dart';

import '../../index.dart';

class SettingConfigurationView extends StatelessWidget {
  SettingConfigurationView({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.branchDetails,
          child: ResponsiveLayout(
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
                      child: _customSettingConfiguration(),
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
                        child: _customSettingConfiguration(),
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
                        child: _customSettingConfiguration(),
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
      () => SingleChildScrollView(
        child: CustomCard(
          title: 'Global Settings Configuration'.tr,
          data: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: sH(32)),
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
              SizedBox(height: sH(32)),
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
              SizedBox(height: sH(32)),
              CustomTextField(
                hintText: 'Tex rate'.tr,
                onChange: (value) {
                  controller.state.texRate = value;
                },
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Image.asset(
                    texRateIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              SizedBox(height: sH(32)),
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
              SizedBox(height: sH(32)),
              CustomButton(
                onTap: () {
                  Get.to(() => BranchDetailsView());
                },
                text: 'Next'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
