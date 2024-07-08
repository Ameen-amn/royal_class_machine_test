import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/image_constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final List<String> _bottomNavBar = [
    ImageConstants.kbiCycle,
    ImageConstants.kMap,
    ImageConstants.kCart,
    ImageConstants.kProfile,
    ImageConstants.kDoc,
  ];

  final int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 103,
      child: CustomPaint(
        size: const Size(double.infinity, 103),
        painter: DiagonalShapePainter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _bottomNavBar.length,
            (index) => index == selectedItem
                ? Transform.translate(
                    offset: const Offset(0, -15),
                    child: CustomPaint(
                      size: const Size(60, 60),
                      painter: NavBarSelectedItem(),
                      child: Container(
                          // decoration: BoxDecoration(
                          //     gradient: ColorConstants.kIconGradient),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          height: 60,
                          width: 60,
                          child: SvgPicture.asset(ImageConstants.kbiCycle)),
                    ),
                  )
                : SvgPicture.asset(_bottomNavBar[index]),
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

class NavBarSelectedItem extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ColorConstants.kIconGradientFullOpacity
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      // ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final RRect rrect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: const Radius.circular(12),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(12),
      bottomLeft: const Radius.circular(12),
    );
    const sideHeigtPerctange = 0.8;
    const sideHeightTopPercentage = 0.2;
    canvas.clipRRect(rrect);
    // Define the border

    Paint borderPaint = Paint()
      ..shader = ColorConstants.kBorderGradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    // Define the custom path within the rounded rectangle
    Path path = Path();
    path.moveTo(12, size.height * sideHeightTopPercentage);
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
        size.height * sideHeightTopPercentage); // Top-left curve
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
