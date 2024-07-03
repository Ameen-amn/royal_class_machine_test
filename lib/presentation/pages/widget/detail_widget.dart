import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.sizeOf(context).height * 0.44,
      decoration: const BoxDecoration(
          gradient: ColorConstants.kDetailGradient,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    );
  }
}
