// ignore_for_file: file_names

import '../../index.dart';

class AddSubCategory extends StatelessWidget {
  AddSubCategory({
    super.key,
  });
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
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
                "Add new subcategory".tr,
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
                    "Subcategory".tr,
                    style: TextStyles.headlineSmall,
                  ),
                  SizedBox(height: sH(24)),

                  ///all category
                  LayoutBuilder(
                    builder: (context, constraints) => RawAutocomplete<String>(
                      optionsViewBuilder: (BuildContext context,
                          AutocompleteOnSelected<String> onSelected,
                          Iterable<String> options) {
                        return Align(
                          alignment: Alignment.topLeft,
                          child: Material(
                            elevation: 4.0,
                            child: SizedBox(
                              // height: 200.0,
                              width: constraints.biggest.width,
                              child: ListView.builder(
                                padding: const EdgeInsets.all(8.0),
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final String option =
                                      options.elementAt(index);
                                  return GestureDetector(
                                    onTap: () {
                                      onSelected(option);
                                    },
                                    child: ListTile(
                                      title: Text(option),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      initialValue: TextEditingValue(
                        text: controller.state.selectedPrimeCategory.value,
                      ),
                      optionsBuilder: (textValue) {
                        if (textValue.text.isEmpty) {
                          return List.empty();
                        } else {
                          if (textValue.text.length == 1) {
                            controller.state.selectedPrimeCategory.value = "";
                            return controller.state.selectPrimesCategores.where(
                                (element) => element
                                    .toLowerCase()
                                    .contains(textValue.text.toLowerCase()));
                          } else {
                            controller.state.selectedPrimeCategory.value =
                                textValue.text;
                            return controller.state.selectPrimesCategores.where(
                                (element) => element
                                    .toLowerCase()
                                    .contains(textValue.text.toLowerCase()));
                          }
                        }
                      },
                      fieldViewBuilder: (context, textEditingController,
                          focusNode, onFieldSubmitted) {
                        return CustomTextField(
                          obscureText: false,
                          focusnode: focusNode,
                          onEditingComplete: onFieldSubmitted,
                          controller: textEditingController,
                          hintText: 'Category name'.tr,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 24),
                            child: Image.asset(
                              primeFieldNameIcon,
                              height: 24,
                              width: 24,
                              color: Palette.primaryColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: sH(16)),
                  CustomTextField(
                    hintText: 'Subcategory name'.tr,
                    onChange: (value) {
                      // controller.state.email = value;
                    },
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 24),
                      child: Image.asset(
                        subCategoryIcon,
                        height: 24,
                        width: 24,
                        color: Palette.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: sH(16)),
                  CustomTextField(
                    hintText: 'Description'.tr,
                    maxline: 5,
                    onChange: (value) {
                      // controller.state.email = value;
                    },
                  ),

                  SizedBox(height: sH(16)),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: sH(18)),
                    decoration: const BoxDecoration(
                      color: Palette.bgTextFeildColor,
                      borderRadius: BorderStyles.normal,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          primeFileAddIcon,
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(height: sH(12)),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyles.headlineSmall,
                            children: [
                              TextSpan(
                                text: 'Drop your file here, or '.tr,
                              ),
                              TextSpan(
                                text: 'Browse'.tr,
                                style: TextStyles.headlineSmall
                                    .copyWith(color: Palette.primaryColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: sH(12)),
                        Text(
                          "Maximum file size 50mb".tr,
                          style: TextStyles.bodyMedium.copyWith(
                            color: Palette.blackColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sH(24)),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 300,
                      child: CustomButton(
                          onTap: () {
                            controller.changeIndex(2, 2);
                          },
                          text: "Add".tr),
                    ),
                  ),
                  SizedBox(height: sH(12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
