import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';

class CustomSwitchButton extends StatelessWidget {
  final String title;
  const CustomSwitchButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorConstants.kButtonDarkShadow,
              offset: Offset(4, 4),
              blurRadius: 6,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: ColorConstants.kButtonlightShadow,
              offset: Offset(-4, -4),
              blurRadius: 6,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // shadowColor: ColorConstants.kActiveButtonColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: ColorConstants.kActiveButtonColor),
            onPressed: () {},
            child: Text(
              title,
              style: const TextStyle(color: ColorConstants.kSkyBlue),
            )));
  }
}

class ShadowedButton extends StatelessWidget {
  const ShadowedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorConstants.kDeactiveButtonColor,
            boxShadow: const [
              BoxShadow(
                color: ColorConstants.kInnerButtonDarkShadow,
                blurRadius: 1,
                offset: Offset(-4, -4),
              ),
              BoxShadow(
                color: ColorConstants.kInnerButtonlightShadow,
                blurRadius: 1,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomPaint(
              painter: InnerShadowPainter(),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                ),
                child: Text(
                  'Specification',
                  style: TextStyle(color: ColorConstants.kDeactive),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InnerShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    _drawInnerShadow(
      canvas,
      size,
      ColorConstants.kInnerButtonDarkShadow,
      const Offset(-4, -4),
      8,
    );
    _drawInnerShadow(
      canvas,
      size,
      ColorConstants.kInnerButtonlightShadow,
      const Offset(4, 4),
      8,
    );
  }

  void _drawInnerShadow(
      Canvas canvas, Size size, Color color, Offset offset, double blurRadius) {
    final Paint paint = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius);

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final Path path = Path()
      ..addRect(rect)
      ..addRect(
        rect.deflate(offset.dx.abs() + offset.dy.abs()),
      )
      ..fillType = PathFillType.evenOdd;

    canvas.saveLayer(rect, Paint());
    canvas.translate(offset.dx, offset.dy);
    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
