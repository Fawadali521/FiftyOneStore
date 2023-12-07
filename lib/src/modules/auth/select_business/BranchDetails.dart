// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/SettingConfiguration.dart';

import '../../index.dart';

class BranchDetails extends StatelessWidget {
  BranchDetails({super.key});
  final SelectBusinessController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.branchDetails,
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
                      child: SingleChildScrollView(
                          child: CustomCard(
                              widthPadding: 18,
                              title: 'Branch details'.tr,
                              data: _customBranchDetails())),
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
                        child: SingleChildScrollView(
                            child: CustomCard(
                                title: 'Branch details'.tr,
                                data: _customBranchDetails())),
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
                        child: SingleChildScrollView(
                            child: CustomCard(
                                title: 'Branch details'.tr,
                                data: _customBranchDetails())),
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
  Widget _customBranchDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),
        CustomTextField(
          hintText: 'branchname'.tr,
          onChange: (value) {
            controller.state.branchName = value;
          },
          validator: (value) {
            return controller.validateField(value, 'Field'.tr);
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              branchNameIcon,
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
            controller.state.branchContact = value;
          },
          validator: (value) {
            return controller.validateField(value, 'Number'.tr);
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
            controller.state.branchEmail = value;
          },
          validator: controller.validateEmail,
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
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'address'.tr,
          onChange: (value) {
            controller.state.branchAddress = value;
          },
          validator: (value) {
            return controller.validateField(value, 'Address'.tr);
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              locationIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            if (controller.branchDetails.currentState!.validate()) {
              Get.to(() => SettingConfiguration(isBranchDetailSAdd: true));
            }
          },
          text: 'Next'.tr,
        ),
      ],
    );
  }
}
