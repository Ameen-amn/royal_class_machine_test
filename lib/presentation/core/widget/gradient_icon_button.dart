import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient: ColorConstants.kIconGradient),
          child: Center(child: SvgPicture.asset(icon))),
    );
  }
}
