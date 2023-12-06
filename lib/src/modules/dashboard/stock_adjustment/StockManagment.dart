// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/products/products.dart';

import '../../index.dart';

class StockManagment extends StatelessWidget {
  StockManagment({
    super.key,
  });
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: sH(24)),
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.grayColor.withOpacity(0.3),
            ),
            borderRadius: BorderStyles.normal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
                child: Text(
                  "Variant details".tr,
                  style: TextStyles.headlineMedium,
                ),
              ),
              const CustomDivider(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: sH(12), horizontal: sW(24)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stock management".tr,
                          style: TextStyles.headlineSmall,
                        ),
                        SizedBox(height: sH(24)),

                        ///all basic stock managment details
                        CustomTextField(
                          hintText: '343318647_PK-1764656991'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              skuIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Add stock'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              addStockIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Threshold numbers'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              warningIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Variant attributes'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              variantIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Select material'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              materialIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),

                        LayoutBuilder(
                          builder: (context, constraints) =>
                              RawAutocomplete<String>(
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
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final String option =
                                            options.elementAt(index);
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
                              text:
                                  controller.state.selectedPrimeCategory.value,
                            ),
                            optionsBuilder: (textValue) {
                              if (textValue.text.isEmpty) {
                                return List.empty();
                              } else {
                                if (textValue.text.length == 1) {
                                  controller.state.selectedPrimeCategory.value =
                                      "";
                                  return controller.state.selectPrimesCategores
                                      .where((element) => element
                                          .toLowerCase()
                                          .contains(
                                              textValue.text.toLowerCase()));
                                } else {
                                  controller.state.selectedPrimeCategory.value =
                                      textValue.text;
                                  return controller.state.selectPrimesCategores
                                      .where((element) => element
                                          .toLowerCase()
                                          .contains(
                                              textValue.text.toLowerCase()));
                                }
                              }
                            },
                            fieldViewBuilder: (context, textEditingController,
                                focusNode, onFieldSubmitted) {
                              return CustomTextField(
                                obscureText: false,
                                focusnode: focusNode,
                                onEditingComplete: onFieldSubmitted,
                                controller: textEditingController,
                                hintText: 'Add color'.tr,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 24),
                                  child: Image.asset(
                                    colorIcon,
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
                          controller: controller.state.expireDate,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              expireIcon,
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
                                      primary: Palette
                                          .primaryColor, // header background color
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
                                    controller.state.expireDate.text =
                                        monthNameDate.format(value),
                                  },
                              },
                            );
                          },
                          hintText: 'Expire date'.tr,
                        ),
                        CustomTextField(
                          hintText: 'Sales price'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              salePriceIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Supplier price'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              supplierPriceIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Discount'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              discountIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Current stock'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              currentStockIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Add manufacturer details'.tr,
                          maxline: 5,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                        ),
                        SizedBox(height: sH(24)),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 300,
                            child: CustomButton(
                                onTap: () {
                                  controller.changeIndex(4, 9);
                                },
                                text: "Next".tr),
                          ),
                        ),
                        SizedBox(height: sH(12)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
