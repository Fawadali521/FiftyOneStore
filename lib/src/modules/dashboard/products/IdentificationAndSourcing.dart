// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/products/products.dart';

import '../../index.dart';

class IdentificationAndSourcing extends StatelessWidget {
  IdentificationAndSourcing({
    super.key,
  });
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
              child: Text(
                "Add product".tr,
                style: TextStyles.headlineMedium,
              ),
            ),
            const CustomDivider(),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
                child: ListView(
                  shrinkWrap: true,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Product Identification and Sourcing".tr,
                      style: TextStyles.headlineSmall,
                    ),
                    SizedBox(height: sH(24)),

                    ///all basic product details
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
                      hintText: '126983457076'.tr,
                      onChange: (value) {
                        // controller.state.email = value;
                      },
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 24),
                        child: Image.asset(
                          barCodeIcon,
                          height: 24,
                          width: 24,
                          color: Palette.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: sH(16)),
                    CustomTextField(
                      hintText: 'Ahmad'.tr,
                      onChange: (value) {
                        // controller.state.email = value;
                      },
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 24),
                        child: Image.asset(
                          namePersonIcon,
                          height: 24,
                          width: 24,
                          color: Palette.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: sH(16)),
                    CustomTextField(
                      hintText:
                          'https://www.daraz.pk/products/-i343318647.html'.tr,
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
                              controller.changeIndex(3, 3);
                            },
                            text: "Add".tr),
                      ),
                    ),
                    SizedBox(height: sH(24)),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add variant".tr,
                        style: TextStyles.headlineSmall.copyWith(
                          fontSize: 24,
                          color: Palette.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: sH(12)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
