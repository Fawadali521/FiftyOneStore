// ignore_for_file: file_names

import 'package:fiftyonestores/src/widgets/CustomCategoryItem.dart';

import '../../index.dart';

class PrimeCategory extends StatelessWidget {
  final DashboardController controller = Get.find();
  PrimeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          children: [
            ///search bar and add category button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Get.width < 750
                    ? const SizedBox()
                    : Get.width > 900
                        ? const Spacer(flex: 4)
                        : Get.width > 1200
                            ? const Spacer(flex: 6)
                            : const Spacer(),
                Expanded(
                  flex: 3,
                  child: CustomTextField(
                    hintText: "What are you looking for".tr,
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: Palette.grayColor,
                    ),
                  ),
                ),
                SizedBox(width: sW(24)),
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    text: "Add category".tr,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: sH(24)),

            ///main content
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: sH(24)),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Palette.grayColor.withOpacity(0.3),
                  ),
                  borderRadius: BorderStyles.normal,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          vertical: sH(12), horizontal: sW(24)),
                      child: Text(
                        "Prime category".tr,
                        style: TextStyles.headlineMedium,
                      ),
                    ),
                    Divider(
                      height: 0,
                      indent: 0,
                      endIndent: 0,
                      color: Palette.grayColor.withOpacity(0.3),
                      thickness: 1,
                    ),
                    SizedBox(height: sH(6)),
                    // prime category lista
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 7,
                        // controller.state.primeProducts.length,
                        itemBuilder: (context, index) {
                          return CustomCategoryItem(
                            primeProduct: controller.state.primeProducts[0],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: sH(6)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
