import 'package:flutter/material.dart';

class ColorConstants {
  static const Color kDartGrey = Color(0xff242c3b);
  static const Color kSkyBlue = Color(0xff37b6e9);
  static const Color kIndigo = Color(0xff4b4ced);
  static const Color klightGrey = Color(0xff353f54);
  static const Color kDimBlack = Color(0xff222834);
  static const Color kWhite = Color(0xffffffff);
  static const Color kBlack = Color(0xff000000);
  static final Color kDeactive = kWhite.withOpacity(0.6);
  static const Color kBackgroundColor = Color(0xff242C3B);
  static final LinearGradient kCardGradient = LinearGradient(colors: [
    const Color(0xff363e51).withOpacity(0.6),
    const Color(0xff192e26).withOpacity(0.6)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static final LinearGradient kIconGradient = LinearGradient(colors: [
    const Color(0xff34c8e8).withOpacity(0.6),
    const Color(0xff4e4af2).withOpacity(0.6)
  ], begin: Alignment.topCenter, end: Alignment.bottomRight);
  static final LinearGradient kBottomNavBar = LinearGradient(colors: [
    const Color(0xff363E51).withOpacity(0.4),
    const Color(0xff181C24).withOpacity(0.4)
  ], begin: Alignment.topCenter, end: Alignment.bottomRight);
  static final LinearGradient kBorderGradient = LinearGradient(
    colors: [
      ColorConstants.kWhite.withOpacity(0.2),
      ColorConstants.kBlack.withOpacity(0.2),
      ColorConstants.kBlack.withOpacity(0.2),
    ],
    stops: const [0.0, 0.2, 1.0],
  );
  static final LinearGradient kBottomNavBarGradient = LinearGradient(colors: [
    ColorConstants.kWhite.withOpacity(0.2),
    ColorConstants.kBlack.withOpacity(0.0),
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);
}
