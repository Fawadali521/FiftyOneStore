import 'package:fiftyonestores/src/modules/dashboard/drawer/DrawerWeb.dart';

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: sW(40)),
              child: Column(
                children: [
                  ///top bar
                  _topBar(),
                  SizedBox(height: sH(24)),
                  Expanded(
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: sW(300),
                                child: CustomTextField(
                                  hintText: "What are you looking for".tr,
                                  prefixIcon: const Icon(
                                    Icons.search_outlined,
                                    color: Palette.grayColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: sW(24)),
                              SizedBox(
                                width: sW(200),
                                child: CustomButton(
                                  text: "Add category".tr,
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _topBar() {
    return SizedBox(
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
          const Spacer(),
          Container(
            // padding: const EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Palette.grayColor,
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: Palette.blueColor,
                    size: 32,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Palette.primaryColor,
                      child: Text(
                        "5",
                        style: TextStyles.bodyMedium.copyWith(
                          color: Palette.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: sW(24)),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              height: 50,
              width: 50,
              user,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: sW(10)),
          Text(
            "Ali Ahemed",
            style: TextStyles.headlineSmall.copyWith(
              fontSize: 18,
            ),
          ),
          SizedBox(width: sW(10)),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Palette.blackColor,
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
                    