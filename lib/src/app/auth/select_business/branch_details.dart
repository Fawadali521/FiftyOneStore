import 'package:fiftyonestores/src/app/auth/select_business/branch_manager_details.dart';
import 'package:fiftyonestores/src/states/select_business/controller.dart';

import '../../index.dart';

class BranchDetailsView extends StatelessWidget {
  BranchDetailsView({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.branchDetails,
          child: ResponsiveLayout(
            /// mobile view
            mobile: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: sW(32)),
                child: _customBranchDetails(),
              ),
            ),

            /// tablet view
            tablet: Center(
              child: SizedBox(
                width: 540,
                child: _customBranchDetails(),
              ),
            ),

            /// desktop view
            desktop: Center(
              child: SizedBox(
                width: 540,
                child: _customBranchDetails(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customBranchDetails() {
    return CustomCard(
      title: 'Branch details'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(32)),
          CustomTextField(
            hintText: 'branchname'.tr,
            onChange: (value) {
              controller.state.branchName = value;
            },
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Image.asset(
                branchNameIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(height: sH(32)),
          CustomTextField(
            hintText: 'address'.tr,
            onChange: (value) {
              controller.state.branchAddress = value;
            },
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Image.asset(
                locationIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(height: sH(32)),
          CustomTextField(
            hintText: 'number'.tr,
            onChange: (value) {
              controller.state.branchContact = value;
            },
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Image.asset(
                contactIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(height: sH(32)),
          CustomTextField(
            hintText: 'enterEmail'.tr,
            onChange: (value) {
              controller.state.branchEmail = value;
            },
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Image.asset(
                emailIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {
              Get.to(() => BranchManagerDetailsView());
            },
            text: 'Next'.tr,
          ),
        ],
      ),
    );
  }
}
