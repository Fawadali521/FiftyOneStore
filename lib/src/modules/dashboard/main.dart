// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/drawer/DrawerWeb.dart';
import 'package:fiftyonestores/src/modules/dashboard/subcategory/AddSubCategory.dart';

import '../index.dart';

class Main extends StatelessWidget {
  Main({super.key});
  final DashboardController controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width < 800
        ? controller.changeExpand(value: false)
        : null;
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: Row(
        children: [
          //
          // side bar drawer
          //
          DrawerWeb(),
          //
          // main home screen
          //
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: controller.state.isExpand ? sW(40) : sW(12),
                  right: sW(40)),
              child: Column(
                children: [
                  ///top bar
                  _topBar(),
                  SizedBox(height: sH(24)),
                  AddSubCategory(),
                  // SubCategory()
                  // PrimeCategory()
                  // AddPrimeCategory(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _topBar() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Text(
            "Dashboard".tr,
            style: TextStyles.headlineLarge.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Container(
            // padding: const EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Palette.grayColor,
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: Palette.blueColor,
                    size: 32,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Palette.primaryColor,
                      child: Text(
                        "5",
                        style: TextStyles.bodyMedium.copyWith(
                          color: Palette.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: sW(24)),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              height: 50,
              width: 50,
              user,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: sW(10)),
          Get.width < 600
              ? const SizedBox()
              : Text(
                  "Ali Ahemed",
                  style: TextStyles.headlineSmall.copyWith(
                    fontSize: 18,
                  ),
                ),
          SizedBox(width: sW(10)),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Palette.blackColor,
          ),
        ],
      ),
    );
  }
}
