import 'package:flutter/material.dart';

class JobCardFooter extends StatelessWidget {
  final String _time;
  final int _distance;
  final String _match;
  JobCardFooter(this._distance, this._match, this._time);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(_time, style: Theme.of(context).textTheme.body1),
        Text('$_distance km', style: Theme.of(context).textTheme.body1),
        Text(_match, style: Theme.of(context).textTheme.body1),
        Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.keyboard_arrow_right, color: Colors.white)),
              Text('Show', style: TextStyle(color: Colors.white))
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          // color: Colors.black,
          height: 60,
          width: 60,
        )
      ],
    );
  }
}
