import 'package:flutter/widgets.dart';

class JobSummary extends StatelessWidget {
  final double _salary;
  final String _title;
  JobSummary(this._title, this._salary);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(_title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('\$ $_salary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
