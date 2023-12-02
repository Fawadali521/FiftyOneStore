import 'package:fiftyonestores/src/app/auth/select_business/setting_configuration.dart';
import 'package:fiftyonestores/src/states/select_business/controller.dart';

import '../../index.dart';

class ContactDetailsView extends StatefulWidget {
  const ContactDetailsView({super.key});

  @override
  State<ContactDetailsView> createState() => _ContactDetailsViewState();
}

class _ContactDetailsViewState extends State<ContactDetailsView> {
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
            mobile: Padding(
              padding: EdgeInsets.all(sW(32)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onPressed: () => Get.back(),
                  ),
                  Expanded(
                    child: Center(
                      child: _customContactDetails(),
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
                        child: _customContactDetails(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// desktop view
            desktop: Padding(
              padding: EdgeInsets.all(sH(80)),
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
                        child: _customContactDetails(),
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
  Widget _customContactDetails() {
    return SingleChildScrollView(
      child: CustomCard(
        title: 'Contact details'.tr,
        data: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: sH(32)),
            CustomTextField(
              hintText: 'number'.tr,
              onChange: (value) {
                controller.state.contactContact = value;
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
                controller.state.contactEmail = value;
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
            CustomTextField(
              hintText: 'Owner name'.tr,
              onChange: (value) {
                controller.state.ownerName = value;
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
            Text(
              "ownerHandler".tr,
              style: TextStyles.headlineSmall.copyWith(
                color: Palette.blackColor.withOpacity(0.7),
              ),
            ),
            SizedBox(height: sH(6)),
            CustomTextField(
              hintText: 'Handler name'.tr,
              onChange: (value) {
                controller.state.handlerName = value;
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
            Text(
              "Select business type".tr,
              style: TextStyles.headlineSmall.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(height: sH(32)),
            SizedBox(
              height: 50,
              // width: 600,
              child: Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.state.businessTypes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          controller.selectBusinessType(index);
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: controller
                                      .state.businessTypes[index].isSelected!
                                  ? Palette.primaryColor
                                  : Palette.grayColor,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                controller.state.businessTypes[index].icon!,
                                height: 34,
                                width: 34,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                controller
                                    .state.businessTypes[index].businessType!,
                                style: TextStyles.titleSmall.copyWith(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: sH(32)),
            CustomButton(
              onTap: () {
                Get.to(() => SettingConfigurationView());
              },
              text: 'Next'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
