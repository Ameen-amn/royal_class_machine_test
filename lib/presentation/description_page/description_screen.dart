import 'package:flutter/material.dart';
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
      appBar: AppBar(
        leading: Container(
            margin: const EdgeInsets.all(4),
            child: CustomIconButton(
                icon: ImageConstants.kDownArrow, onTap: () {})),
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
