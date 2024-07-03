import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/home_screen/widget/background_shape.dart';
import 'package:royal_class/presentation/home_screen/widget/bottom_nav_bar.dart';
import 'package:royal_class/presentation/home_screen/widget/carousel_card.dart';
import 'package:royal_class/presentation/home_screen/widget/item_card.dart';
import 'package:royal_class/presentation/pages/widget/detail_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.kBackgroundColor,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          'Choose your Bike',
          style: TextStyle(color: ColorConstants.kWhite),
        ),
        actions: [
          CustomIconButton(icon: ImageConstants.kSearchIcon, onTap: () {})
        ],
      ),
      backgroundColor: ColorConstants.kBackgroundColor,
      body: Stack(
        children: [
          const BackgroundShape(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CarouselCard(),
                  ItemCard(
                    onTap: () => Navigator.of(context)
                        .pushNamed(DetailBottomBar.detailScreen),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

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
