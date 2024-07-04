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
              state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                          color: ColorConstants.kSkyBlue, strokeWidth: 5),
                    )
                  : Column(
                      children: [
                        CustomCarouselSlider(
                          imageList: state.selectedProduct?.image ?? [],
                        ),
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

class CustomCarouselSlider extends StatefulWidget {
  final List<dynamic> imageList;
  const CustomCarouselSlider({
    super.key,
    required this.imageList,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int currentIndex = 0;
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            // width: 288,
            height: 208,
            child: CarouselSlider.builder(
                itemCount: widget.imageList.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.network(widget.imageList[index],
                      fit: BoxFit.cover);
                },
                options: CarouselOptions(
                    autoPlay: true,
                    onPageChanged: (index, reason) =>
                        setState(() => currentIndex = index),
                    autoPlayAnimationDuration: const Duration(seconds: 3)))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _carouselController.animateToPage(entry.key),
              child: Container(
                width: currentIndex == entry.key ? 7.0 : 7.0,
                height: 7.0,
                margin: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: currentIndex == entry.key ? 2 : 4.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // shape: currentIndex == entry.key
                    //     ? BoxShape.rectangle
                    //     : BoxShape.circle,
                    color: currentIndex == entry.key
                        ? ColorConstants.kWhite
                        : ColorConstants.kDeactive),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
