import 'package:flutter/material.dart';

class JobTimeSpec extends StatelessWidget {
  final String _timeDuration;
  final String _distance;
  final String _match;
  JobTimeSpec(this._timeDuration, this._distance, this._match);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .1, color: Colors.grey))),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all( 20),
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: .1, color: Colors.grey[600]))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_timeDuration,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  'Time',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: .1, color: Colors.grey[600]))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_distance,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  'Distance',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_match,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  'Match',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Colors.grey[600]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
