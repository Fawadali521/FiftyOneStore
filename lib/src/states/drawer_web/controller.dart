import 'package:fiftyonestores/src/states/drawer_web/state.dart';

import '../../modules/index.dart';

class DrawerControler extends GetxController {
  final state = DrawerState();

  void changeIndex(int index) {
    state.selectedIndex = index;
  }

  void changeExpand() {
    state.isExpand = !state.isExpand;
  }
}
