import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(165, 241), // Adjust the size as needed
      painter: DiagonalShapePainter(),
      child: SizedBox(
        height: 240,
        width: 165,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(ImageConstants.kHeart),
            ),
            // Image.asset('name'),
            const Text('accessory_cate'),
            const Text('title'),
            const Text('price'),
          ],
        ),
      ),
    );
  }
}

class DiagonalShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ColorConstants.kCardGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      // ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomRight: const Radius.circular(20),
      bottomLeft: const Radius.circular(20),
    );
    const sideHeigtPerctange = 0.9;
    const sideHeightTopPercentage = 0.1;
    canvas.clipRRect(rrect);
    // Define the border

    Paint borderPaint = Paint()
      ..shader = ColorConstants.kBorderGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

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
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
