import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  child: CustomPaint(
                    painter: DrawCircle(
                        Colors.black12,
                        MediaQuery.of(context).size.width * 0.48,
                        Offset(0.0, 0.0)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  child: CustomPaint(
                    painter: DrawCircle(
                        Colors.white,
                        MediaQuery.of(context).size.width * 0.31,
                        Offset(0.0, 0.0)),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomPaint(
                      painter: DrawCircle(
                          swatch2,
                          25,
                          Offset(MediaQuery.of(context).size.width * 0.20,
                              MediaQuery.of(context).size.height * 0.07))),
                ),
                CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.307,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('img/face.png')),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomPaint(
                      painter: DrawCircle(
                          Colors.red,
                          33,
                          Offset(MediaQuery.of(context).size.width * 0.28,
                              MediaQuery.of(context).size.height * 0.1))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomPaint(
                      painter: DrawCircle(
                          swatch6,
                          20,
                          Offset(MediaQuery.of(context).size.width * 0.8,
                              MediaQuery.of(context).size.height * 0.001))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: CustomPaint(
                      painter: DrawCircle(
                         Colors.red,
                          10,
                          Offset(MediaQuery.of(context).size.width * 0.8,
                              MediaQuery.of(context).size.height * 0.1))),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  onPressed: () {},
                  child: Text(
                    'LOGIN AS REGI',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
            FlatButton(
              child: Text('DELETE ACCOUNT',
                  style: Theme.of(context).textTheme.caption),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  Paint _paint;
  Color color;
  double radius;
  Offset offset;

  DrawCircle(this.color, this.radius, this.offset) {
    _paint = Paint()..color = color;
  }
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(offset, radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
