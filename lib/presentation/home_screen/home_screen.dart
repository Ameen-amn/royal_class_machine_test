import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/core/widget/gradient_icon_button.dart';
import 'package:royal_class/presentation/description_page/description_screen.dart';
import 'package:royal_class/presentation/home_screen/widget/background_shape.dart';
import 'package:royal_class/presentation/home_screen/widget/bottom_nav_bar.dart';
import 'package:royal_class/presentation/home_screen/widget/carousel_card.dart';
import 'package:royal_class/presentation/home_screen/widget/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.fetchProducts());
    super.initState();
  }

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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomIconButton(
                icon: ImageConstants.kSearchIcon, onTap: () {}),
          )
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
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: ColorConstants.kSkyBlue,
                            strokeWidth: 5,
                          ),
                        );
                      }
                      if (state.isLoaded) {
                        return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 3 / 5,
                                    crossAxisCount: 2),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Transform.translate(
                                offset: Offset(0, index % 2 != 0 ? -30 : 0),
                                child: ItemCard(
                                  product: state.productList?[index],
                                  onTap: () {
                                    BlocProvider.of<ProductBloc>(context).add(
                                        ProductEvent.fetchProductDetail(
                                            id: state.productList?[index].id ??
                                                0));
                                    Navigator.of(context)
                                        .pushNamed(DetailScreen.detailScreen);
                                  },
                                ),
                              );
                            });
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: CustomBottomNavBar()),
        ],
      ),
    );
  }
}
