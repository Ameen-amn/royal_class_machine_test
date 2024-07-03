import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 103,
      child: CustomPaint(
        size: const Size(double.infinity, 103), // Adjust the size as needed
        painter: DiagonalShapePainter(),
        child: Row(
          children: List.generate(
            5,
            (index) => CustomPaint(
              size: const Size(60, 60), // Adjust the size as needed
              painter: DiagonalShapePainter(),
              child: Container(
                  decoration:
                      BoxDecoration(gradient: ColorConstants.kIconGradient),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                  height: 60,
                  width: 60,
                  child: SvgPicture.asset(ImageConstants.kHeart)),
            ),
          ),
        ),
      ),
    );
  }
}

class DiagonalShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint borderPaint = Paint()
      ..shader = ColorConstants.kBottomNavBarGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Paint paint = Paint()
      ..shader = ColorConstants.kBottomNavBar
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    const sideHeigtPerctange = 0.8;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(0),
      topRight: const Radius.circular(0),
      bottomRight: const Radius.circular(0),
      bottomLeft: const Radius.circular(0),
    );
    canvas.clipRRect(rrect);

    // Define the custom path within the rounded rectangle
    Path path = Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
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

class BottomNavShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ColorConstants.kIconGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      // ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(50),
      topRight: const Radius.circular(50),
      bottomRight: const Radius.circular(50),
      bottomLeft: const Radius.circular(50),
    );
    const sideHeigtPerctange = 0.9;
    const sideHeightTopPercentage = 0.1;
    canvas.clipRRect(rrect);
    // Define the border

    // Paint borderPaint = Paint()
    //   ..shader = ColorConstants.kBorderGradient
    //       .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 4;

    // Define the custom path within the rounded rectangle
    Path path = Path();
    path.moveTo(
        0,
        size.height *
            sideHeightTopPercentage); // Start 20% down on the left side
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
    path.lineTo(0,
        size.height * sideHeightTopPercentage + rrect.tlRadiusY); // Left side
    path.quadraticBezierTo(
        0,
        size.height * sideHeightTopPercentage,
        rrect.tlRadiusX,
        size.height * sideHeightTopPercentage - 5); // Top-left curve
    path.close();

    // Draw the path
    canvas.drawPath(path, paint);
    // Draw the border
    // canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
