import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/core/widget/gradient_icon_button.dart';
import 'package:royal_class/presentation/description_page/widget/detail_bottom_bar.dart';
import 'package:royal_class/presentation/home_screen/widget/background_shape.dart';
import 'package:royal_class/presentation/home_screen/widget/bottom_nav_bar.dart';
import 'package:royal_class/presentation/home_screen/widget/carousel_card.dart';
import 'package:royal_class/presentation/home_screen/widget/item_card.dart';

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
