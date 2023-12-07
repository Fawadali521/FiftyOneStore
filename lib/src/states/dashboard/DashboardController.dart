// ignore_for_file: file_names

import 'package:fiftyonestores/src/states/dashboard/DashboardState.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

import '../../modules/index.dart';

class DashboardController extends GetxController {
  late DropzoneViewController dropZoneViewController;
  final state = DashboardState();
  final primeFormKey = GlobalKey<FormState>();
  final subFormKey = GlobalKey<FormState>();

  void changeIndex(int indexDrawer, int indexPage) {
    state.selectedIndex = indexDrawer;
    state.selectedPageIndex = indexPage;
  }

  void changeExpand({bool? value}) {
    if (value != null) {
      state.isExpand = value;
    } else {
      state.isExpand = !state.isExpand;
    }
  }

  void changeMarginCalculation(bool value) {
    state.switchValue.value = value;
  }

  String? validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName ${'is required'.tr}';
    }
    return null;
  }
}
