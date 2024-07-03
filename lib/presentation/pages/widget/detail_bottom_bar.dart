import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class DetailBottomBar extends StatelessWidget {
  static final String detailScreen = '/DetailScreen';
  const DetailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
          color: ColorConstants.kdetailBottomBar,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('1855'),
          DecoratedBox(
            decoration: BoxDecoration(gradient: ColorConstants.kIconGradient),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent),
                onPressed: () {},
                child: const Text('Add to Cart')),
          )
        ],
      ),
    );
  }
}
