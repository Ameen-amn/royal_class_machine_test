import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class TextthemeConstants {
  static final textTheme = TextTheme(
      displayLarge: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConstants.kDartGrey),
      bodyMedium: TextStyle(color: ColorConstants.kDeactive, fontSize: 14));
}
