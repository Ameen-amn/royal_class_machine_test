import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';
import 'package:royal_class/presentation/home_screen/widget/category.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              children: [
                CustomPaint(
                  size: const Size(
                      double.infinity, 240), // Adjust the size as needed
                  painter: DiagonalShapePainter(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 153,
                            width: double.infinity,
                            child: Image.asset(ImageConstants.kcycle)),
                        Text(
                          '30% OFF',
                          style: TextStyle(
                              fontSize: 28,
                              color: ColorConstants.kDeactive,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: 280, child: CategoryBar())
        ],
      ),
    );
  }
}

class DiagonalShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint borderPaint = Paint()
      ..shader = ColorConstants.kBorderGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Paint paint = Paint()
      ..shader = ColorConstants.kCardGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomRight: const Radius.circular(20),
      bottomLeft: const Radius.circular(20),
    );

    const sideHeigtPerctange = 0.8;

    canvas.clipRRect(rrect);
    Path path = Path();
    path.moveTo(rrect.tlRadiusX, 0); // Top-left corner after radius
    path.lineTo(
        size.width - rrect.trRadiusX, 0); // Top-right corner before radius
    path.quadraticBezierTo(
        size.width, 0, size.width, rrect.trRadiusY); // Top-right curve
    path.lineTo(size.width,
        size.height * sideHeigtPerctange - rrect.brRadiusY); // Right side
    path.quadraticBezierTo(
        size.width,
        size.height * sideHeigtPerctange,
        size.width - rrect.brRadiusX,
        size.height * sideHeigtPerctange); // Bottom-right curve
    path.lineTo(rrect.blRadiusX, size.height); // Bottom-left side
    path.quadraticBezierTo(
        0, size.height, 0, size.height - rrect.blRadiusY); // Bottom-left curve
    path.lineTo(0, rrect.tlRadiusY); // Left side
    path.quadraticBezierTo(0, 0, rrect.tlRadiusX, 0); // Top-left curve
    path.close();
    canvas.drawPath(path, paint);
    // Draw the border
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
