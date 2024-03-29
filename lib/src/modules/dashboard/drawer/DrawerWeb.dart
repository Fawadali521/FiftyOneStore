// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/drawer/widgets/CustomSideBarItem.dart';

import '../../index.dart';

class DrawerWeb extends StatelessWidget {
  final DashboardController controller = Get.find();
  DrawerWeb({super.key});
  // final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: controller.state.isExpand ? 270 : 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  //
                  // all items of the drawer
                  //
                  Container(
                    width: controller.state.isExpand ? null : 100,
                    padding: controller.state.isExpand
                        ? EdgeInsets.zero
                        : const EdgeInsets.only(
                            right: 12,
                          ),
                    child: Container(
                      color: const Color(0xFFF7F7F7),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 32),
                      child: Column(
                        children: [
                          /// logo
                          controller.state.isExpand
                              ? Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset(
                                    logo,
                                    width: 153,
                                    height: 56,
                                  ),
                                )
                              : Image.asset(
                                  logo51,
                                  width: 56,
                                  height: 56,
                                ),
                          SizedBox(height: sH(32)),

                          /// details of the drawer
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: controller.state.isExpand
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                                children: [
                                  CustomSideBarItem(
                                    onTap: () => controller.changeIndex(0, 0),
                                    title: "Dashboard".tr,
                                    icon: dashboardIcon,
                                    isExpand: controller.state.isExpand,
                                    isSelected:
                                        controller.state.selectedIndex == 0
                                            ? true
                                            : false,
                                  ),
                                  controller.state.isExpand
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 14),
                                          child: Text(
                                            "Category management".tr,
                                            style: TextStyles.headlineSmall,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  CustomSideBarItem(
                                    onTap: () => controller.changeIndex(1, 1),
                                    title: "Prime category".tr,
                                    icon: primeCategoryIcon,
                                    isExpand: controller.state.isExpand,
                                    isSelected:
                                        controller.state.selectedIndex == 1
                                            ? true
                                            : false,
                                  ),
                                  CustomSideBarItem(
                                    onTap: () => controller.changeIndex(2, 2),
                                    title: "Subcategory".tr,
                                    icon: subCategoryIcon,
                                    isExpand: controller.state.isExpand,
                                    isSelected:
                                        controller.state.selectedIndex == 2
                                            ? true
                                            : false,
                                  ),
                                  controller.state.isExpand
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 14),
                                          child: Text(
                                            "Product management".tr,
                                            style: TextStyles.headlineSmall,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                  CustomSideBarItem(
                                    onTap: () => controller.changeIndex(3, 3),
                                    title: "Products".tr,
                                    icon: productIcon,
                                    isExpand: controller.state.isExpand,
                                    isSelected:
                                        controller.state.selectedIndex == 3
                                            ? true
                                            : false,
                                  ),
                                  CustomSideBarItem(
                                    onTap: () => controller.changeIndex(4, 4),
                                    title: "Stock adjustment".tr,
                                    icon: stockAdjustmentIcon,
                                    isExpand: controller.state.isExpand,
                                    isSelected:
                                        controller.state.selectedIndex == 4
                                            ? true
                                            : false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  // top close open button
                  //
                  Padding(
                    padding: EdgeInsets.only(
                        top: 48, right: controller.state.isExpand ? 24 : 0),
                    child: InkWell(
                      onTap: () {
                        MediaQuery.of(context).size.width > 750
                            ? controller.changeExpand()
                            : null;
                      },
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFF2F2F2),
                        radius: 12,
                        child: Icon(
                          controller.state.isExpand
                              ? Icons.arrow_back_ios_rounded
                              : Icons.arrow_forward_ios_outlined,
                          color: const Color(0xFF767676),
                          size: 14,
                        ),
                      ),
                    ),
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
