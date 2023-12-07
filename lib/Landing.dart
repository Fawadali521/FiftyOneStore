// ignore_for_file: file_names

import 'package:fiftyonestores/src/modules/dashboard/Main.dart';

import 'src/modules/index.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});
  @override
  LandingState createState() => LandingState();
}

class LandingState extends State<Landing> {
  @override
  void initState() {
    // authServices = Provider.of<AuthServices>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // init();
      _initialSetup();
    });
    super.initState();
  }

  _initialSetup() async {
    await Future.delayed(const Duration(seconds: 2));
    // await Future.delayed(const Duration(seconds: 1));

    Get.offAll(() => Main());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      body: Center(
        child: Image.asset(
          logo,
          width: sW(305),
          // color: kBlackColor,
        ),
      ),
    );
  }
}
