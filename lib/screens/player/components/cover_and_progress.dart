import 'dart:math';

import 'package:flutter/material.dart';
import 'package:me_music/generated/assets.dart';


class CoverAndProgress extends StatelessWidget {
  const CoverAndProgress({
    Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double coverDiameter = size.width * 0.55;
    double progressDiameter = 0.67 * coverDiameter;
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: CustomPaint(
              painter: MyPainter(
                progressDiameter: progressDiameter,
                progress: 10.0,
              ),
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.black,
          elevation: 20.0,
          shape: BoxShape.circle,
          child: Container(
            width: coverDiameter,
            height: coverDiameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(Assets.imagesAdele1),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: coverDiameter * 0.18,
              height: coverDiameter * 0.18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({required this.progressDiameter, required this.progress});

  double progressDiameter;
  double progress;

  @override
  void paint(Canvas canvas, Size size) {
    Paint fullCircle = Paint()
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    fullCircle.color = Colors.grey;
    canvas.drawCircle(Offset(0.0, 0.0), progressDiameter, fullCircle);

    Paint animatedArc = Paint()
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    animatedArc.color = Colors.black87;
    double angle = 2 * pi * (10 / 100);
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0.0, 0.0), radius: progressDiameter),
      -pi / 2,
      angle,
      false,
      animatedArc,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


