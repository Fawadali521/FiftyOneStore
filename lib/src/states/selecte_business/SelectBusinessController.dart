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
    state.isCorporate = true;
    state.isIndividual = false;
  }

  void selectTypeIndividual() {
    state.isIndividual = true;
    state.isCorporate = false;
  }

  changeCurrency(String val) async {
    if (val != state.selectedCurency.value) {
      state.selectedCurency.value = val;
    }
  }

  changeTimeZone(String val) async {
    if (val != state.selectedTimeZone.value) {
      state.selectedTimeZone.value = val;
    }
  }

  changeYearStart(String val) async {
    if (val != state.selectedYearStart.value) {
      state.selectedYearStart.value = val;
    }
  }

  void selectBusinessType(int index) async {
    if (index >= 0 && index < state.businessTypes.length) {
      state.businessTypes[index].isSelected =
          !state.businessTypes[index].isSelected!;
    }
  }
}
