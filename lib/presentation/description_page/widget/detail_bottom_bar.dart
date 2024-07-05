import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class DetailBottomBar extends StatelessWidget {
  final int prince;
  const DetailBottomBar({super.key, required this.prince});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorConstants.kDimBlack,
      child: GradientBorderContainer(
        height: 80,
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
              color: ColorConstants.kdetailBottomBar,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$ $prince',
                style: const TextStyle(
                    color: ColorConstants.kSkyBlue,
                    fontWeight: FontWeight.w400),
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        gradient: ColorConstants.kIconGradient),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent),
                        onPressed: () {
                          // BlocProvider.of<ProductBloc>(context).add(
                          //      ProductEvent.addToCart(
                          //         prod: state.selectedProduct));
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Added to Cart")));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: ColorConstants.kWhite,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GradientBorderContainer extends StatelessWidget {
  final double width;
  final double height;

  final Widget child;

  const GradientBorderContainer({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });
  final borderWidth = 2.0;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GradientBorderPainter(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        borderWidth: borderWidth,
        gradient: ColorConstants.kBorderGradient,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(borderWidth),
          child: child,
        ),
      ),
    );
  }
}

class GradientBorderPainter extends CustomPainter {
  final double borderWidth;
  final Gradient gradient;
  final BorderRadius borderRadius;

  GradientBorderPainter({
    required this.borderWidth,
    required this.gradient,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final borderRect = Rect.fromLTWH(
      borderWidth / 2,
      borderWidth / 2,
      size.width - borderWidth,
      size.height - borderWidth,
    );

    final rrect = RRect.fromRectAndCorners(
      borderRect,
      topLeft: borderRadius.topLeft,
      topRight: borderRadius.topRight,
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
