import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/home_screen/home_screen.dart';
import 'package:royal_class/presentation/pages/widget/background_detail.dart';
import 'package:royal_class/presentation/pages/widget/detail_bottom_bar.dart';
import 'package:royal_class/presentation/pages/widget/detail_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            CustomIconButton(icon: ImageConstants.kDownArrow, onTap: () {}),
        centerTitle: true,
        title: const Text('asdf'),
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
