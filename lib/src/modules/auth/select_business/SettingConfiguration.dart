// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/BranchDetails.dart';
import 'package:fiftyonestores/src/states/selecte_business/SelectBusinessController.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),

        ///currency
        LayoutBuilder(
          builder: (context, constraints) => RawAutocomplete<String>(
            initialValue: TextEditingValue(
              text: controller.state.selectedCurency.value,
            ),
            //second property where you can limit the overlay pop up suggestion
            optionsViewBuilder: (BuildContext context,
                AutocompleteOnSelected<String> onSelected,
                Iterable<String> options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 4.0,
                  child: SizedBox(
                    // height: 200.0,
                    width: constraints.biggest.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String option = options.elementAt(index);
                        return GestureDetector(
                          onTap: () {
                            onSelected(option);
                          },
                          child: ListTile(
                            title: Text(option),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            optionsBuilder: (textValue) {
              if (textValue.text.isEmpty) {
                return List.empty();
              } else {
                if (textValue.text.length == 1) {
                  controller.state.selectedCurency.value = "";
                  return controller.state.selectCurrences.where((element) =>
                      element
                          .toLowerCase()
                          .contains(textValue.text.toLowerCase()));
                } else {
                  controller.state.selectedCurency.value = textValue.text;
                  return controller.state.selectCurrences.where((element) =>
                      element
                          .toLowerCase()
                          .contains(textValue.text.toLowerCase()));
                }
              }
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return CustomTextField(
                obscureText: false,
                focusnode: focusNode,
                onEditingComplete: onFieldSubmitted,
                controller: textEditingController,
                hintText: "Select currency".tr,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Image.asset(
                    currencyIcon,
                    height: 24,
                    width: 24,
                    color: Palette.primaryColor,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: sH(16)),

        ///time zone
        LayoutBuilder(
          builder: (context, constraints) => RawAutocomplete<String>(
            optionsViewBuilder: (BuildContext context,
                AutocompleteOnSelected<String> onSelected,
                Iterable<String> options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 4.0,
                  child: SizedBox(
                    // height: 200.0,
                    width: constraints.biggest.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String option = options.elementAt(index);
                        return GestureDetector(
                          onTap: () {
                            onSelected(option);
                          },
                          child: ListTile(
                            title: Text(option),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            initialValue: TextEditingValue(
              text: controller.state.selectedTimeZone.value,
            ),
            optionsBuilder: (textValue) {
              if (textValue.text.isEmpty) {
                return List.empty();
              } else {
                if (textValue.text.length == 1) {
                  controller.state.selectedTimeZone.value = "";
                  return controller.state.selectTimeZones.where((element) =>
                      element
                          .toLowerCase()
                          .contains(textValue.text.toLowerCase()));
                } else {
                  controller.state.selectedTimeZone.value = textValue.text;
                  return controller.state.selectTimeZones.where((element) =>
                      element
                          .toLowerCase()
                          .contains(textValue.text.toLowerCase()));
                }
              }
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return CustomTextField(
                obscureText: false,
                focusnode: focusNode,
                onEditingComplete: onFieldSubmitted,
                controller: textEditingController,
                hintText: 'Set time zone'.tr,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Image.asset(
                    timeZoneIcon,
                    height: 24,
                    width: 24,
                    color: Palette.primaryColor,
                  ),
                ),
              );
            },
          ),
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
        CustomTextField(
          controller: controller.state.fiscalStartYear,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              yearStartIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
          onTap: () {
            showDatePicker(
              context: Get.context!,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2100),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    datePickerTheme: const DatePickerThemeData(
                      surfaceTintColor: Palette.bgLightColor,
                    ),
                    colorScheme: const ColorScheme.light(
                      primary: Palette.primaryColor, // header background color
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        textStyle: TextStyles.titleMedium,
                        // button text color
                      ),
                    ),
                  ),
                  child: child!,
                );
              },
            ).then(
              (value) => {
                FocusManager.instance.primaryFocus?.unfocus(),
                if (value != null)
                  {
                    controller.state.fiscalStartYear.text =
                        monthNameDate.format(value),
                  },
              },
            );
          },
          obscureText: false,
          hintText: 'Fiscal year start'.tr,
        ),

        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            Get.to(() => BranchDetails());
          },
          text: 'Next'.tr,
        ),
      ],
    );
  }
}
