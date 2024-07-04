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
        size: const Size(double.infinity, 103), 
        painter: DiagonalShapePainter(),
        child: Row(
          children: List.generate(
            5,
            (index) => CustomPaint(
              size: const Size(60, 60), 
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

    Path path = Path();
    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
   
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
   
    Path path = Path();
    path.moveTo(
        0,
        size.height *
            sideHeightTopPercentage); 
    path.lineTo(
        size.width - rrect.trRadiusX, 0);
    path.quadraticBezierTo(
        size.width, 0, size.width, rrect.trRadiusY);
    path.lineTo(size.width,
        size.height * sideHeigtPerctange - rrect.brRadiusY);
    path.quadraticBezierTo(
        size.width,
        size.height * sideHeigtPerctange,
        size.width - rrect.brRadiusX,
        size.height * sideHeigtPerctange); 
    path.lineTo(rrect.blRadiusX, size.height);
    path.quadraticBezierTo(
        0, size.height, 0, size.height - rrect.blRadiusY);
    path.lineTo(0,
        size.height * sideHeightTopPercentage + rrect.tlRadiusY);
    path.quadraticBezierTo(
        0,
        size.height * sideHeightTopPercentage,
        rrect.tlRadiusX,
        size.height * sideHeightTopPercentage - 5);
    path.close();

  
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
