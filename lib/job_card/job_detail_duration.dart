import 'package:flutter/material.dart';

class JobDuration extends StatelessWidget {
  final String _jobFinish;
  final String _jobStart;
  JobDuration(this._jobStart, this._jobFinish);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 30, bottom: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .1, color: Colors.grey))),
      child: Row(
        children: <Widget>[
          Icon(Icons.access_time),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('20 Oct 2084',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)),
                Text(_jobStart,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[600],
                        fontSize: 10))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('-', style: TextStyle(fontSize: 22)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '20 Oct 2084',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  _jobFinish,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
