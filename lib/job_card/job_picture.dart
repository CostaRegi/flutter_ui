import 'package:flutter/material.dart';

class JobPicture extends StatelessWidget {
  final Image _image;
  JobPicture(this._image);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6))
      ),
      padding: EdgeInsets.only(top: 15),
      child: _image,
    );
  }
}
