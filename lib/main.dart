import 'package:fiftyonestores/src/app/auth/signup/signup_view.dart';
import 'package:fiftyonestores/src/services/languages.dart';
import 'package:fiftyonestores/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  runApp(const FiftyOneStores());
}

class FiftyOneStores extends StatelessWidget {
  const FiftyOneStores({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '51Stores',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Palette.bgLightWhiteColor,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUpView(),
    );
  }
}
