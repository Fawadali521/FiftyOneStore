import 'package:fiftyonestores/src/modules/dashboard/drawer/web_drawer.dart';

import '../index.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: Row(
        children: [
          //
          // side bar drawer
          //
          const DrawerWeb(),
          //
          // main home screen
          //
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Text(
                        "Dashboard".tr,
                        style: TextStyles.headlineLarge.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Home Screen',
                          style: TextStyles.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Home Screen',
                      style: TextStyles.headlineLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}









//  SizedBox(
//                       width: MediaQuery.sizeOf(context).width,
//                       height: MediaQuery.sizeOf(context).height,
//                       child: WebDrawerNavigation(
//                           defaultNavigatorScreen: const AllScreen(),
//                           defaultSelectedScreenNavigationName:
//                               'dashboardScreen',
//                           height: Get.height,
//                           drawerTilesList: const [
//                             TextTitle(
//                               titleFullForm: 'Management',
//                               titleShortForm: 'M',
//                             ),
//                             DrawerIconButton(
//                               icon: Icons.dashboard,
//                               title: 'Dashboard',
//                               screenNavigationName: 'dashboardScreen',
//                               navigatorScreenWidget: AllScreen(),
//                             ),
//                             DrawerIconButton(
//                                 icon: Icons.shopping_cart,
//                                 title: 'MarketPlace',
//                                 screenNavigationName: 'marketPlace',
//                                 navigatorScreenWidget: AllScreen()),
//                             DrawerIconButton(
//                                 icon: Icons.shopping_basket,
//                                 title: 'Orders',
//                                 screenNavigationName: 'orders',
//                                 navigatorScreenWidget: AllScreen()),
//                             DrawerIconButton(
//                                 icon: Icons.track_changes,
//                                 title: 'Tracking',
//                                 screenNavigationName: 'tracking',
//                                 navigatorScreenWidget: AllScreen()),
//                             DrawerIconButton(
//                                 icon: Icons.people,
//                                 title: 'Customers',
//                                 screenNavigationName: 'customers',
//                                 navigatorScreenWidget: Customers()),
//                             DrawerIconButton(
//                                 icon: Icons.discount,
//                                 title: 'Discounts',
//                                 screenNavigationName: 'discounts',
//                                 navigatorScreenWidget: AllScreen()),
//                             TextTitle(
//                                 titleShortForm: 'P', titleFullForm: 'Payments'),
//                             DrawerIconButton(
//                                 icon: Icons.receipt_long,
//                                 title: 'Ledger',
//                                 screenNavigationName: 'ledger',
//                                 navigatorScreenWidget: AllScreen()),
//                             DrawerIconButton(
//                                 icon: Icons.paid,
//                                 title: 'Taxes',
//                                 screenNavigationName: 'taxes',
//                                 navigatorScreenWidget: AllScreen()),
//                             TextTitle(
//                                 titleFullForm: 'Setting', titleShortForm: 'S'),
//                             DrawerIconButton(
//                                 icon: Icons.people,
//                                 title: 'Settings',
//                                 screenNavigationName: 'settings',
//                                 navigatorScreenWidget: AllScreen()),
//                             SwitchTile(),
//                             ProfileImageWithTitleTile(
//                               height: 300,
//                               profileName: 'Ali Khan',
//                               screenNavigationName: 'profile',
//                               navigatorScreenWidget: AllScreen(),
//                             ),
//                             DrawerIconButton(
//                                 icon: Icons.logout,
//                                 title: 'Log Out',
//                                 screenNavigationName: 'logout',
//                                 navigatorScreenWidget: AllScreen())
//                           ]),
//                     ),
                    