import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';

class CategoryBar extends StatelessWidget {
  CategoryBar({super.key});
  final List<Widget> categoryList = [
    const Text('All'),
    SvgPicture.asset(ImageConstants.kBattery),
    SvgPicture.asset(ImageConstants.kRoad),
    SvgPicture.asset(ImageConstants.kUnion),
    SvgPicture.asset(ImageConstants.kHelmet),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          categoryList.length,
          (index) => Transform.translate(
              offset: Offset(20.0 * index, -15.0 * index),
              child: GradientBorderContainer(child: categoryList[index]))),
    );
  }
}

class GradientBorderContainer extends StatelessWidget {
  final Widget child;

  final BorderRadius borderRadius;

  const GradientBorderContainer({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: ColorConstants.kBorderGradient,
      ),
      child: ClipRRect(
        borderRadius: borderRadius - BorderRadius.circular(2),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: ColorConstants.kCardGradient,
            borderRadius: borderRadius - BorderRadius.circular(2),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
