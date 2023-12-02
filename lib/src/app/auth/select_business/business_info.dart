import 'package:fiftyonestores/src/app/auth/select_business/contact_details.dart';
import 'package:fiftyonestores/src/states/select_business/controller.dart';

import '../../index.dart';

class BusinessInfoView extends StatelessWidget {
  BusinessInfoView({super.key});
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
            mobile: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: sW(32)),
                child: _customOrganizationInformation(),
              ),
            ),

            /// tablet view
            tablet: Center(
              child: SizedBox(
                width: 540,
                child: _customOrganizationInformation(),
              ),
            ),

            /// desktop view
            desktop: Center(
              child: SizedBox(
                width: 540,
                child: _customOrganizationInformation(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // design for all screens
  Widget _customOrganizationInformation() {
    return CustomCard(
      title: 'Organization information'.tr,
      data: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: sH(32)),
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
              ),
            ),
          ),
          SizedBox(height: sH(32)),
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
              ),
            ),
          ),
          SizedBox(height: sH(32)),
          CustomButton(
            onTap: () {
              Get.to(() => const ContactDetailsView());
            },
            text: 'Next'.tr,
          ),
        ],
      ),
    );
  }
}
