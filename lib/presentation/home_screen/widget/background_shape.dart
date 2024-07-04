import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({super.key});

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
              MediaQuery.sizeOf(context).height), 
          painter: DiagonalShapePainter(),
        ),
      ],
    );
  }
}

class DiagonalShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
   

    Paint paint = Paint()
      ..shader = ColorConstants.kIconGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomRight: const Radius.circular(0),
      bottomLeft: const Radius.circular(20),
    );

    const sideHeigtPerctange = 0.8;

    canvas.clipRRect(rrect);
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width - size.width * 0.1, size.height * 0.1);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
