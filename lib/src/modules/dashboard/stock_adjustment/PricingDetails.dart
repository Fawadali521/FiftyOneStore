// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/products/products.dart';

import '../../index.dart';

class PricingDetails extends StatelessWidget {
  PricingDetails({
    super.key,
  });
  // final DashboardController controller = Get.find();
  final DashboardController controller = Get.put(DashboardController());

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
                          "Pricing Details".tr,
                          style: TextStyles.headlineSmall,
                        ),
                        SizedBox(height: sH(24)),

                        ///all pricing details textfiled
                        CustomTextField(
                          hintText: 'Base price'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Price visibility'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                        ),
                        SizedBox(height: sH(16)),
                        CustomTextField(
                          hintText: 'Sales price'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                        ),
                        SizedBox(height: sH(24)),
                        Text(
                          "Supplier Prices".tr,
                          style: TextStyles.headlineSmall,
                        ),
                        SizedBox(height: sH(24)),
                        CustomTextField(
                          hintText: 'Cost price entry'.tr,
                          onChange: (value) {
                            // controller.state.email = value;
                          },
                        ),
                        SizedBox(height: sH(16)),
                        Obx(
                          () => Row(
                            children: [
                              const Text(
                                "Margin Calculation",
                                style: TextStyles.titleSmall,
                              ),
                              const SizedBox(width: 12),
                              Switch(
                                value: controller.state.switchValue.value,
                                onChanged: (value) {
                                  controller.changeMarginCalculation(value);
                                },
                                activeTrackColor: Palette.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: sH(24)),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 300,
                            child: CustomButton(
                                onTap: () {
                                  controller.changeIndex(0, 0);
                                },
                                text: "Add".tr),
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
