import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/core/widget/gradient_icon_button.dart';
import 'package:royal_class/presentation/description_page/widget/background_detail.dart';
import 'package:royal_class/presentation/description_page/widget/detail_bottom_bar.dart';
import 'package:royal_class/presentation/description_page/widget/detail_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Container(
          color: ColorConstants.kBackgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AppBar(
            leading: Container(
                margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                child: CustomIconButton(
                    icon: ImageConstants.kDownArrow, onTap: () {})),
            centerTitle: true,
            title: const Text(
              'PEUGEOT-LR01',
              style: TextStyle(
                  color: ColorConstants.kWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          const BackgroundDetailShape(),
          Column(
            children: [
              SizedBox(
                  // width: 288,
                  height: 208,
                  child: Image.asset(
                    ImageConstants.kcycle,
                    fit: BoxFit.cover,
                  )),
              const Spacer(),
              const DetailWidget()
            ],
          )
        ],
      ),
      bottomNavigationBar: const DetailBottomBar(),
    );
  }
}
