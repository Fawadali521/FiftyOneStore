// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/ContactDetails.dart';
import 'package:fiftyonestores/src/states/selecte_business/SelectBusinessController.dart';

import '../../index.dart';

class BusinessInfo extends StatelessWidget {
  BusinessInfo({super.key});
  final SelectBusinessController controller =
      Get.put(SelectBusinessController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.orgInfo,
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
                          title: 'Organization information'.tr,
                          data: _customOrganizationInformation()),
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
                            title: 'Organization information'.tr,
                            data: _customOrganizationInformation()),
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
                            title: 'Organization information'.tr,
                            data: _customOrganizationInformation()),
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
  Widget _customOrganizationInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),
        CustomTextField(
          hintText: 'Organization name'.tr,
          onChange: (value) {
            controller.state.orgName = value;
          },
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 24),
            child: Image.asset(
              orgNameIcon,
              height: 24,
              width: 24,
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        CustomTextField(
          hintText: 'Enter organization address'.tr,
          onChange: (value) {
            controller.state.orgAddress = value;
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
            Get.to(() => const ContactDetails());
          },
          text: 'Next'.tr,
        ),
      ],
    );
  }
}
