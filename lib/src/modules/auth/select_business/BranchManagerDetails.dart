// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/main.dart';
import 'package:fiftyonestores/src/states/selecte_business/SelectBusinessController.dart';

import '../../index.dart';

class BranchManagerDetails extends StatelessWidget {
  BranchManagerDetails({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.branchManagerDetails,
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
                      child: CustomCard(
                          widthPadding: 18,
                          title: 'managerDetails'.tr,
                          data: _customBranManagerchDetails()),
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
                        child: CustomCard(
                            title: 'managerDetails'.tr,
                            data: _customBranManagerchDetails()),
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
                        child: CustomCard(
                            title: 'managerDetails'.tr,
                            data: _customBranManagerchDetails()),
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
  Widget _customBranManagerchDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),
        CustomTextField(
          hintText: 'enterName'.tr,
          onChange: (value) {
            controller.state.managerName = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              managerNameIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'number'.tr,
          onChange: (value) {
            controller.state.managerContact = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              contactIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'enterEmail'.tr,
          onChange: (value) {
            controller.state.managerEmail = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              emailIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            Get.offAll(() => Main());
          },
          text: 'Next'.tr,
        ),
      ],
    );
  }
}
