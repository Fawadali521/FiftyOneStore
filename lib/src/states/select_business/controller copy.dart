import 'package:fiftyonestores/src/states/select_business/state.dart';

import '../../modules/index.dart';

class SelectBusinessController extends GetxController {
  final state = SelectBusinessState();
  final orgInfo = GlobalKey<FormState>();
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
      print("value selecteddd => ${state.businessTypes[index].isSelected}");
    }
  }
}
