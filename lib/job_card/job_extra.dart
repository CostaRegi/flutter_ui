import 'package:flutter/cupertino.dart';

class JobExtra extends StatelessWidget {
  final String _jobExtra;
  JobExtra(this._jobExtra);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text(_jobExtra, style: TextStyle(fontSize: 12))],
    );
  }
}
