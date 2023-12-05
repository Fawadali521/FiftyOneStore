// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/dashboard/DashboardState.dart';

import '../../modules/index.dart';

class DashboardController extends GetxController {
  final state = DashboardState();

  void changeIndex(int index) {
    state.selectedIndex = index;
  }

  void changeExpand({bool? value}) {
    if (value != null) {
      state.isExpand = value;
    } else {
      state.isExpand = !state.isExpand;
    }
  }
}
