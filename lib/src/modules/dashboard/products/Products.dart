// ignore_for_file: file_names

import '../../index.dart';

class Products extends StatelessWidget {
  final DashboardController controller = Get.find();
  Products({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: sH(24)),
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.grayColor.withOpacity(0.3),
          ),
          borderRadius: BorderStyles.normal,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            ///search bar and add category button and products title
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Products".tr,
                    style: TextStyles.headlineMedium,
                  ),
                  SizedBox(width: sW(12)),
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
                      onTap: () {
                        controller.changeIndex(3, 7);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const CustomDivider(),

            ///product list
            LayoutBuilder(
              builder: (context, constraints) => ListView(
                shrinkWrap: true,
                children: [
                  ///product list header
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.symmetric(
                        vertical: sH(12), horizontal: sW(24)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.16,
                          child: const Text(
                            'Product name',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Spacer(),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.18,
                          child: const Text(
                            'Description',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: const Text(
                            'Prime Categories',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: const Text(
                            'Subcategory',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.16,
                          child: const Text(
                            'SKU',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: const Text(
                            'Barcodes',
                            style: TextStyles.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        const Spacer(),
                        SizedBox(
                          width: constraints.maxWidth * 0.06,
                          child: const Text(
                            'Actions',
                            style: TextStyles.headlineSmall,
                            textAlign: TextAlign.end,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.symmetric(
                        vertical: sH(10), horizontal: sW(24)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.16,
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderStyles.normal,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      electronic,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: sW(8)),
                              Expanded(
                                child: Text(
                                  "INTERWOOD Venice Bedroom Sofa",
                                  style: TextStyles.bodyMedium.copyWith(
                                      color:
                                          Palette.blackColor.withOpacity(0.8)),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.18,
                          child: Text(
                            "Create a welcoming space to sit and relax in any living space with our ",
                            style: TextStyles.bodyMedium.copyWith(
                              color: Palette.blackColor.withOpacity(0.8),
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: Text(
                            "Furniture",
                            style: TextStyles.bodyMedium.copyWith(
                                color: Palette.blackColor.withOpacity(0.8)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: Text(
                            "Sofa",
                            style: TextStyles.bodyMedium.copyWith(
                                color: Palette.blackColor.withOpacity(0.8)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.16,
                          child: Text(
                            "343318647_PK-1764656991",
                            style: TextStyles.bodyMedium.copyWith(
                                color: Palette.blackColor.withOpacity(0.8)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        SizedBox(
                          width: constraints.maxWidth * 0.12,
                          child: Text(
                            "126983457076",
                            style: TextStyles.bodyMedium.copyWith(
                                color: Palette.blackColor.withOpacity(0.8)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(width: sW(8)),
                        const Spacer(),
                        SizedBox(
                          width: constraints.maxWidth * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const CustomActionButon(
                                icon: Icons.edit_outlined,
                                color: Color(0xFF1A73E9),
                                backGroundColor: Color(0xFFE8F1FD),
                              ),
                              SizedBox(width: sW(8)),
                              const CustomActionButon(
                                icon: Icons.delete_outline,
                                color: Palette.redColor,
                                backGroundColor: Color(0xFFFBEAEA),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                ],
              ),
            ),
            const CustomDivider(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sW(20), vertical: sH(12)),
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
    );
  }
}

class CustomActionButon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backGroundColor;
  const CustomActionButon({
    super.key,
    required this.icon,
    required this.color,
    required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
