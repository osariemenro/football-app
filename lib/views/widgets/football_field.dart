import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';
import './formations.dart';

class FieldFormation extends StatelessWidget {
  final Widget teamFormation;
  const FieldFormation({super.key, required this.teamFormation});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Sizing.customHeight(180),
      color: Colors.transparent,
      child: CustomPaint(
          painter: LinePath(),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth / 2,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      left: constraints.maxWidth * .04,
                      right: constraints.maxWidth * .02,),
                  child: Formation_3_4_2_1(),
                ),
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth / 2,
                  padding: EdgeInsets.only(
                      right: constraints.maxWidth * .04,
                      left: constraints.maxWidth * .02,),
                  child: Formation_4_1_4_1(),
                )
              ],
            );
          })),
    );
  }
}

class LinePath extends CustomPainter {
  final fieldStrokeColor = Color.fromARGB(255, 197, 196, 196);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = fieldStrokeColor;

    // drawing a rectang
    // create the offset
    final a = Offset(size.width * 0, size.height * 0);
    final b = Offset(size.width * 1, size.height * 1);

    final rect = Rect.fromPoints(a, b);
    canvas.drawRect(rect, paint);

    // draw a line
    final paintLine = Paint()..color = fieldStrokeColor;

    canvas.drawLine(Offset(size.width * 0.5, size.height * 0),
        Offset(size.width * 0.5, size.height * 1), paintLine);

    // mid field circle
    final paintCircle = Paint()
      ..style = PaintingStyle.stroke
      ..color = fieldStrokeColor;
    final center = Offset(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, 50, paintCircle);

    // mid field circle - small
    final paintCircle2 = Paint()
      ..style = PaintingStyle.fill
      ..color = fieldStrokeColor.withOpacity(.2);
    ;
    final center2 = Offset(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center2, 3, paintCircle2);

    // pitch goal post left
    // goalpost left line A1
    final gpll = Paint()..color = fieldStrokeColor;
    ;
    canvas.drawLine(Offset(size.width * 0, size.height * 0.35),
        Offset(size.width * .06, size.height * 0.35), gpll);

    canvas.drawLine(Offset(size.width * 0, size.height * 0.65),
        Offset(size.width * .06, size.height * 0.65), gpll);

    canvas.drawLine(Offset(size.width * .06, size.height * 0.35),
        Offset(size.width * .06, size.height * 0.65), gpll);

    // outter line left

    canvas.drawLine(Offset(size.width * 0, size.height * 0.24),
        Offset(size.width * .12, size.height * 0.24), gpll);

    canvas.drawLine(Offset(size.width * 0, size.height * 0.77),
        Offset(size.width * .12, size.height * 0.77), gpll);

    canvas.drawLine(Offset(size.width * .12, size.height * 0.24),
        Offset(size.width * .12, size.height * 0.77), gpll);

    // pitch goal post right
    canvas.drawLine(Offset(size.width * 1, size.height * 0.35),
        Offset(size.width * .94, size.height * 0.35), gpll);

    canvas.drawLine(Offset(size.width * 1, size.height * 0.65),
        Offset(size.width * .94, size.height * 0.65), gpll);

    canvas.drawLine(Offset(size.width * .94, size.height * 0.35),
        Offset(size.width * .94, size.height * 0.65), gpll);

    // outter line left

    canvas.drawLine(Offset(size.width * .88, size.height * 0.24),
        Offset(size.width * 1, size.height * 0.24), gpll);

    canvas.drawLine(Offset(size.width * .88, size.height * 0.77),
        Offset(size.width * 1, size.height * 0.77), gpll);

    canvas.drawLine(Offset(size.width * .88, size.height * 0.24),
        Offset(size.width * .88, size.height * 0.77), gpll);

    // TODO: add the arcs
    // arcs
    final paintArc = Paint();
    final arc1 = Path();
    arc1.moveTo(size.width * 0, size.height * 0.03);
    arc1.arcToPoint(
      Offset(size.width * 0, size.height * 0.03),
      radius: Radius.circular(6),
    );
    canvas.drawPath(arc1, paintArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
