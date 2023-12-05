// ignore_for_file: file_names

import '../../modules/index.dart';

class DashboardState extends LoadingState {
  final RxBool _isExpand = false.obs;
  final RxInt _selectedIndex = 0.obs;
  bool get isExpand => _isExpand.value;
  int get selectedIndex => _selectedIndex.value;
  set isExpand(value) => _isExpand.value = value;
  set selectedIndex(value) => _selectedIndex.value = value;
}
