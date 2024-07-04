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

    canvas.clipRRect(rrect);
   
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
   
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
