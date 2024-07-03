import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class BackgroundDetailShape extends StatelessWidget {
  const BackgroundDetailShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorConstants.kBackgroundColor,
          width: 500,
          height: MediaQuery.sizeOf(context).height,
        ),
        CustomPaint(
          size: Size(500,
              MediaQuery.sizeOf(context).height), // Adjust the size as needed
          painter: DiagonalShapePainter(),
        ),
      ],
    );
  }
}

class DiagonalShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint borderPaint = Paint()
    //   ..shader = ColorConstants.kBorderGradient
    //       .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 4;

    Paint paint = Paint()
      ..shader = ColorConstants.kIconGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(0),
      topRight: const Radius.circular(0),
      bottomRight: const Radius.circular(20),
      bottomLeft: const Radius.circular(20),
    );

    const sideHeigtPerctange = 0.8;

    canvas.clipRRect(rrect);
    // Define the custom path within the rounded rectangle
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
    // path.moveTo(rrect.tlRadiusX, 0); // Top-left corner after radius
    // path.lineTo(
    //     size.width - rrect.trRadiusX, 0); // Top-right corner before radius
    // path.quadraticBezierTo(
    //     size.width, 0, size.width, rrect.trRadiusY); // Top-right curve
    // path.lineTo(size.width,
    //     size.height * sideHeigtPerctange - rrect.brRadiusY); // Right side
    // path.quadraticBezierTo(
    //     size.width,
    //     size.height * sideHeigtPerctange,
    //     size.width - rrect.brRadiusX,
    //     size.height * sideHeigtPerctange); // Bottom-right curve
    // path.lineTo(rrect.blRadiusX, size.height); // Bottom-left side
    // path.quadraticBezierTo(
    //     0, size.height, 0, size.height - rrect.blRadiusY); // Bottom-left curve
    // path.lineTo(0, rrect.tlRadiusY); // Left side
    // path.quadraticBezierTo(0, 0, rrect.tlRadiusX, 0); // Top-left curve
    // path.close();
    // canvas.drawPath(path, paint);
    // // Draw the border
    // canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
