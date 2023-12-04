import '../../modules/index.dart';

class DrawerState extends LoadingState {
  final RxBool _isExpand = false.obs;
  final RxInt _selectedIndex = 0.obs;
  bool get isExpand => _isExpand.value;
  int get selectedIndex => _selectedIndex.value;
  set isExpand(value) => _isExpand.value = value;
  set selectedIndex(value) => _selectedIndex.value = value;
}
