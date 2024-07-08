import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class TextthemeConstants {
  static final textTheme = TextTheme(
      displayLarge: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: ColorConstants.kDartGrey),
      bodyMedium: TextStyle(color: ColorConstants.kDeactive, fontSize: 20),
      displaySmall: const TextStyle(color: ColorConstants.kBlack, fontSize: 14),
      bodySmall:
          const TextStyle(color: ColorConstants.kHintColor, fontSize: 14),
      headlineLarge: const TextStyle(
          color: ColorConstants.kWhite, fontWeight: FontWeight.bold,fontSize: 15));
}
