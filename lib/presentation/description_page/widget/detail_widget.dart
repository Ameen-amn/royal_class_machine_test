import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/description_page/widget/switch_button.dart';

class DetailWidget extends StatelessWidget {
  final String title;
  final String description;
  const DetailWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: MediaQuery.sizeOf(context).height * 0.44,
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
      decoration: const BoxDecoration(
          gradient: ColorConstants.kDetailGradient,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSwitchButton(title: 'Description'),
                ShadowedButton()
              ],
            ),

            const SizedBox(height: 30),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.kWhite),
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.kDeactive),
            )
          ],
        ),
      ),
    );
  }
}
