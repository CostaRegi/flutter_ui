import 'package:flutter/material.dart';

class JobLocationDetail extends StatelessWidget {
  final String _origin;
  final String _originTime;
  final Color _iconColor;
  JobLocationDetail(this._origin, this._originTime, this._iconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 8), child: Text(_originTime, style: TextStyle(fontSize: 12, color: Colors.grey))),
          Padding(padding: EdgeInsets.only(right: 8),child: Icon(Icons.radio_button_checked, color: _iconColor)),
          Text(_origin)
        ],
      ),
    );
  }
}
