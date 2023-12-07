// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/auth/select_business/SettingConfiguration.dart';

import '../../index.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final SelectBusinessController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: Form(
          key: controller.contactDetails,
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
                              title: 'Contact details'.tr,
                              data: _customContactDetails())),
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
                                title: 'Contact details'.tr,
                                data: _customContactDetails())),
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
                                title: 'Contact details'.tr,
                                data: _customContactDetails())),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: sH(24)),
        CustomTextField(
          hintText: 'number'.tr,
          onChange: (value) {
            controller.state.contactContact = value;
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
            controller.state.contactEmail = value;
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
          hintText: 'Owner name'.tr,
          onChange: (value) {
            controller.state.ownerName = value;
          },
          validator: (value) {
            return controller.validateField(value, 'Owner name'.tr);
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
        Text(
          "ownerHandler".tr,
          style: TextStyles.headlineSmall.copyWith(
            color: Palette.blackColor.withOpacity(0.5),
          ),
        ),
        SizedBox(height: sH(10)),
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
              color: Palette.primaryColor,
            ),
          ),
        ),
        SizedBox(height: sH(16)),
        Text(
          "Select business type".tr,
          style: TextStyles.headlineSmall.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(height: sH(16)),
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
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color:
                              controller.state.selectIndexBusinessType.value ==
                                      index
                                  ? Palette.primaryColor
                                  : Palette.grayColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            controller.state.businessTypes[index].icon!,
                            height: 28,
                            width: 28,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            controller.state.businessTypes[index].businessType!,
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
        SizedBox(height: sH(24)),
        CustomButton(
          onTap: () {
            if (controller.contactDetails.currentState!.validate()) {
              if (controller.state.selectIndexBusinessType.value < 0) {
                SnackBarToast(
                  message: 'Please select business type',
                );
                return;
              }
              Get.to(() => SettingConfiguration());
            }
          },
          text: 'Next'.tr,
        ),
      ],
    );
  }
}
