import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/core/widget/gradient_icon_button.dart';
import 'package:royal_class/presentation/description_page/widget/background_detail.dart';
import 'package:royal_class/presentation/description_page/widget/detail_bottom_bar.dart';
import 'package:royal_class/presentation/description_page/widget/detail_widget.dart';

class DetailScreen extends StatelessWidget {
  static const String detailScreen = '/DetailScreen';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
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
                        icon: ImageConstants.kDownArrow,
                        onTap: () => Navigator.of(context).pop())),
                centerTitle: true,
                title: Text(
                  state.selectedProduct?.title ?? '',
                  style: const TextStyle(
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
                      child: CarouselSlider.builder(
                          itemCount: state.selectedProduct?.image.length,
                          itemBuilder: (context, index, realIndex) {
                            return Image.asset(
                                state.selectedProduct?.image[index],
                                fit: BoxFit.cover);
                          },
                          options: CarouselOptions())),
                  const Spacer(),
                  DetailWidget(
                    title: state.selectedProduct?.title ?? '',
                    description: state.selectedProduct?.description ?? '',
                  )
                ],
              )
            ],
          ),
          bottomNavigationBar: DetailBottomBar(
            prince: state.selectedProduct?.price ?? 0,
          ),
        );
      },
    );
  }
}
