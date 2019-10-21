import 'package:flutter/material.dart';

class JobLocationMoveSteps extends StatelessWidget {
  final String _origin, _destination;
  JobLocationMoveSteps(this._origin, this._destination);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 30, bottom: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .1, color: Colors.grey))),
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.width * .3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.radio_button_checked,
                color: Colors.black,
              ),
              Padding(padding: EdgeInsets.only(left: 20),),
              Text(_origin),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.width * .3),
            child: CustomPaint(
              painter: VerticalLine(),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.radio_button_checked,
                color: Colors.blue,
              ),
              Padding(padding: EdgeInsets.only(left: 20),),
              Text(_destination),
            ],
          ),
        ],
      ),
    );
  }
}

class VerticalLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = .1;

    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
