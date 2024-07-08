import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/widget/texttheme.dart';

final kTextFieldBoxDecoratioin = InputDecoration(
    fillColor: ColorConstants.kWhite,

    hintStyle: TextthemeConstants.textTheme.bodySmall,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.kBorderColor,
        width: 1.37,
      ),
      borderRadius: BorderRadius.all(Radius.circular(7.28)),
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.kBorderColor,
        width: 1.37,
      ),
      borderRadius: BorderRadius.all(Radius.circular(7.28)),
    ),
    border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorConstants.kBorderColor,
          width: 1.37,
        ),
        borderRadius: BorderRadius.all(Radius.circular(7.28))));
