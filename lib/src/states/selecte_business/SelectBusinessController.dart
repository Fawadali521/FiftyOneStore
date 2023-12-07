// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/selecte_business/SelectBusinessState.dart';

import '../../modules/index.dart';

class SelectBusinessController extends GetxController {
  final state = SelectBusinessState();
  final orgInfo = GlobalKey<FormState>();
  final contactDetails = GlobalKey<FormState>();
  final branchManagerDetails = GlobalKey<FormState>();
  final settingConfiguration = GlobalKey<FormState>();
  final branchDetails = GlobalKey<FormState>();
  void selectTypeCorporate() {
    state.isCorporate.value = true;
    state.isIndividual.value = false;
  }

  void selectTypeIndividual() {
    state.isIndividual.value = true;
    state.isCorporate.value = false;
  }

  void selectBusinessType(int index) async {
    if (index >= 0 && index < state.businessTypes.length) {
      state.selectIndexBusinessType.value = index;
    }
  }

  String? validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName ${'is required'.tr}';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required'.tr;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'emailaddress'.tr;
    }
    return null;
  }
}
