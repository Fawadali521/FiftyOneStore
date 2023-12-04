//
import 'package:fiftyonestores/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextStyles {
  static const headlineLarge = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );
  static const headlineMedium = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );
  static const headlineSmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );

  static const titleLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );
  static const titleMedium = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );
  static const titleSmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    fontFamily: fontFamilyPoppins,
    color: Colors.black,
  );
  // static const bodyLarge = TextStyle(
  //   fontWeight: FontWeight.w600,
  //   fontSize: 28,
  //   color: Colors.black,
  // );
  // static const bodyMedium = TextStyle(
  //   fontWeight: FontWeight.w400,
  //   fontSize: 14,
  //   color: Colors.black,
  // );
  // static const bodySmall = TextStyle(
  //   fontWeight: FontWeight.w400,
  //   fontSize: 14,
  //   color: Colors.black,
  // );
}

class BorderStyles {
  static const normal = BorderRadius.all(Radius.circular(8));
  static const medium = BorderRadius.all(Radius.circular(12));
}

class Palette {
  static const Color bgLightWhiteColor = Color(0xFFF7F7F7);
  static const Color bgWhiteColor = Color(0xFFFFFFFF);
  static const Color bgTextFeildColor = Color(0xFFF7F7F7);
  static const Color primaryColor = Color(0xFF47C03F);
  static const Color grayColor = Color(0xFFA1A1A1);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
}

sH(double value) {
  double iniH = Get.height;
  if (Get.height < 900) {
    iniH = 844; //mobile
  } else {
    iniH = 1024; //web & tablet
  }
  return Get.height * (value / iniH);
}

sW(double value) {
  double iniW = Get.width;
  if (Get.width < 500) {
    iniW = 390; //mobile
  } else if (Get.width < 900) {
    iniW = 800; //tablet
  } else {
    iniW = 1440; //web
  }
  return Get.width * (value / iniW);
}
