// ignore_for_file: file_names

import 'package:fiftyonestores/src/models/ProductModel.dart';

import '../../index.dart';

class Products extends StatelessWidget {
  final DashboardController controller = Get.find();
  Products({super.key});
  @override
  Widget build(BuildContext context) {
    double height = Get.height > 550 ? Get.height - 110 : 550;
    double initWidth = controller.state.isExpand
        ? Get.width - (273 + sW(80))
        : Get.width - (113 + sW(52));
    double width = initWidth < 1000
        ? 1000
        : controller.state.isExpand
            ? Get.width - (273 + sW(80))
            : Get.width - (113 + sW(52));

    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: sH(24)),
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.grayColor.withOpacity(0.3),
        ),
        borderRadius: BorderStyles.normal,
      ),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: ListView(
              children: [
                //search bar and add category button and products title
                Container(
                  width: width,
                  padding: EdgeInsets.symmetric(
                      vertical: sH(12), horizontal: sW(24)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Products".tr,
                        style: TextStyles.headlineMedium,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: width * .3,
                        child: CustomTextField(
                          hintText: "What are you looking for".tr,
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: Palette.grayColor,
                          ),
                        ),
                      ),
                      SizedBox(width: sW(24)),
                      SizedBox(
                        width: width * .2,
                        child: Column(
                          children: [
                            CustomButton(
                              text: "Add category".tr,
                              onTap: () {
                                controller.changeIndex(3, 7);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //product list header
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: sW(24),
                  ),
                  child: Row(
                    children: [
                      CustomProductTitle(
                        width: width * 0.130,
                        title: "Product name",
                        rightMargin: width * 0.008,
                      ),
                      const Spacer(),
                      CustomProductTitle(
                        width: width * 0.170,
                        title: 'Description',
                        rightMargin: width * 0.008,
                      ),
                      CustomProductTitle(
                        width: width * 0.130,
                        title: 'Prime Categories',
                        rightMargin: width * 0.008,
                      ),
                      CustomProductTitle(
                        width: width * 0.110,
                        title: 'Subcategory',
                        rightMargin: width * 0.008,
                      ),
                      CustomProductTitle(
                        width: width * 0.170,
                        title: 'SKU',
                        rightMargin: width * 0.008,
                      ),
                      CustomProductTitle(
                        width: width * 0.110,
                        title: 'Barcodes',
                        rightMargin: width * 0.008,
                      ),
                      CustomProductTitle(
                        width: width * 0.070,
                        title: 'Actions',
                      ),
                    ],
                  ),
                ),
                const CustomDivider(),

                ///product list
                SizedBox(
                  height: height - (sH(70) + 110),
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return _ProductDetails(
                          width: width,
                          product: controller.state.products[0],
                        );
                      }),
                ),

                /// pagination
                const CustomDivider(),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: sW(20), vertical: sH(12)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomIconButton(
                        icon: Icons.arrow_back_ios_new_outlined,
                        isSlected: true,
                      ),
                      CustomTextButton(
                        isSlected: true,
                        text: "1",
                      ),
                      CustomTextButton(
                        isSlected: false,
                        text: "2",
                      ),
                      CustomTextButton(
                        isSlected: false,
                        text: "...",
                      ),
                      CustomTextButton(
                        isSlected: false,
                        text: "11",
                      ),
                      CustomTextButton(
                        isSlected: false,
                        text: "12",
                      ),
                      CustomIconButton(
                        icon: Icons.arrow_forward_ios_outlined,
                        isSlected: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column _ProductDetails({
    required double width,
    required ProductModel product,
    VoidCallback? onTapEdit,
    VoidCallback? onTapDelete,
  }) {
    return Column(
      children: [
        Container(
          width: width,
          padding: EdgeInsets.symmetric(
            vertical: sH(10),
            horizontal: sW(24),
          ),
          child: Row(
            children: [
              Container(
                width: width * 0.130,
                padding: EdgeInsets.only(right: width * 0.008),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderStyles.normal,
                        image: DecorationImage(
                          image: AssetImage(product.image!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: width * 0.008),
                        child: Text(
                          product.title!,
                          style: TextStyles.bodyMedium.copyWith(
                              color: Palette.blackColor.withOpacity(0.8)),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomProductDescription(
                description: product.description!,
                width: width * 0.170,
                rightMargin: width * 0.008,
              ),
              CustomProductDescription(
                description: product.primeCategory!,
                width: width * 0.130,
                rightMargin: width * 0.008,
              ),
              CustomProductDescription(
                description: product.subCategory!,
                width: width * 0.110,
                rightMargin: width * 0.008,
              ),
              CustomProductDescription(
                description: product.sku!,
                width: width * 0.170,
                rightMargin: width * 0.008,
              ),
              CustomProductDescription(
                description: product.barcode!,
                width: width * 0.110,
                rightMargin: width * 0.008,
              ),
              SizedBox(
                width: width * 0.070,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomActionButon(
                      onTap: onTapEdit,
                      icon: Icons.edit_outlined,
                      color: const Color(0xFF1A73E9),
                      backGroundColor: const Color(0xFFE8F1FD),
                    ),
                    SizedBox(width: sW(8)),
                    CustomActionButon(
                      onTap: onTapDelete,
                      icon: Icons.delete_outline,
                      color: Palette.redColor,
                      backGroundColor: const Color(0xFFFBEAEA),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}

class CustomProductDescription extends StatelessWidget {
  const CustomProductDescription({
    super.key,
    required this.width,
    required this.description,
    this.rightMargin,
  });

  final double width;
  final double? rightMargin;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(right: rightMargin ?? 0),
      child: Text(
        description,
        style: TextStyles.bodyMedium.copyWith(
          color: Palette.blackColor.withOpacity(0.8),
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class CustomProductTitle extends StatelessWidget {
  const CustomProductTitle({
    super.key,
    required this.width,
    required this.title,
    this.rightMargin,
  });

  final double width;
  final double? rightMargin;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(right: rightMargin ?? 0),
      child: Text(
        title,
        style: TextStyles.headlineSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class CustomActionButon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backGroundColor;
  final VoidCallback? onTap;
  const CustomActionButon({
    super.key,
    required this.icon,
    required this.color,
    required this.backGroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderStyles.normal,
          color: backGroundColor,
        ),
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final bool isSlected;
  final String text;
  const CustomTextButton({
    super.key,
    required this.isSlected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSlected
              ? Palette.primaryColor
              : Palette.grayColor.withOpacity(0.3),
        ),
        borderRadius: BorderStyles.small,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.titleSmall.copyWith(
            color: isSlected ? Palette.primaryColor : Palette.blackColor,
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final bool isSlected;
  final IconData icon;
  const CustomIconButton({
    super.key,
    required this.isSlected,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color:
            isSlected ? Palette.grayColor.withOpacity(0.5) : Palette.whiteColor,
        border: Border.all(
          color: isSlected
              ? Palette.grayColor.withOpacity(0.5)
              : Palette.grayColor.withOpacity(0.3),
        ),
        borderRadius: BorderStyles.small,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 16,
          color: isSlected
              ? Palette.whiteColor.withOpacity(0.5)
              : Palette.grayColor.withOpacity(0.3),
        ),
      ),
    );
  }
}
