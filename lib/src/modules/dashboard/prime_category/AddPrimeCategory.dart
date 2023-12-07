// ignore_for_file: file_names

import '../../index.dart';

class AddPrimeCategory extends StatelessWidget {
  AddPrimeCategory({
    super.key,
  });
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: controller.primeFormKey,
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
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
                child: Text(
                  "Add new prime category".tr,
                  style: TextStyles.headlineMedium,
                ),
              ),
              Divider(
                height: 0,
                indent: 0,
                endIndent: 0,
                color: Palette.grayColor.withOpacity(0.3),
                thickness: 1,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: sH(12), horizontal: sW(24)),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      "Prime category".tr,
                      style: TextStyles.headlineSmall,
                    ),
                    SizedBox(height: sH(24)),
                    CustomTextField(
                      hintText: 'Category name'.tr,
                      onChange: (value) {
                        controller.state.primeCategoryName = value;
                      },
                      validator: (value) {
                        return controller.validateField(
                            value, 'Category name'.tr);
                      },
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 24),
                        child: Image.asset(
                          primeFieldNameIcon,
                          height: 24,
                          width: 24,
                          color: Palette.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: sH(16)),
                    CustomTextField(
                      hintText: 'Description'.tr,
                      maxline: 7,
                      onChange: (value) {
                        controller.state.primeCategoryDescription = value;
                      },
                      validator: (value) {
                        return controller.validateField(
                            value, 'Description'.tr);
                      },
                    ),
                    SizedBox(height: sH(16)),
                    Obx(
                      () => Container(
                        width: double.infinity,
                        height: 150,
                        padding: EdgeInsets.symmetric(vertical: sH(18)),
                        decoration: BoxDecoration(
                            color: Palette.bgTextFeildColor,
                            borderRadius: BorderStyles.normal,
                            border: Border.all(
                              color: controller.state.isDropHover.value
                                  ? Palette.primaryColor
                                  : Palette.bgTextFeildColor,
                            )),
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              controller.buildDropFile(context),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    primeFileAddIcon,
                                    height: 40,
                                    width: 40,
                                  ),
                                  SizedBox(height: sH(12)),
                                  controller.state.subCageryFileName.value != ''
                                      ? Text(
                                          controller
                                              .state.subCageryFileName.value,
                                          style: TextStyles.headlineSmall,
                                        )
                                      : RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            style: TextStyles.headlineSmall,
                                            children: [
                                              TextSpan(
                                                text: 'Drop your file here, or '
                                                    .tr,
                                              ),
                                              TextSpan(
                                                text: 'Browse'.tr,
                                                style: TextStyles.headlineSmall
                                                    .copyWith(
                                                        color: Palette
                                                            .primaryColor),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        controller.pickFile();
                                                      },
                                              ),
                                            ],
                                          ),
                                        ),
                                  SizedBox(height: sH(12)),
                                  Text(
                                    "Maximum file size 50mb".tr,
                                    style: TextStyles.bodyMedium.copyWith(
                                      color:
                                          Palette.blackColor.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: sH(24)),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 300,
                        child: CustomButton(
                          onTap: () {
                            if (controller.primeFormKey.currentState!
                                .validate()) {
                              controller.changeIndex(1, 1);
                              controller.primeFormKey.currentState!.reset();
                            }
                          },
                          text: "Add".tr,
                        ),
                      ),
                    ),
                    SizedBox(height: sH(12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
