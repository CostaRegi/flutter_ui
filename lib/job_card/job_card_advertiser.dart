import 'package:flutter/material.dart';

class JobAdvertiser extends StatelessWidget {
  final Image _image;
  JobAdvertiser(this._image);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all( 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .1, color: Colors.grey))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ClipRRect(child: _image, borderRadius: BorderRadius.circular(8.0),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Jon doe'),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(padding: EdgeInsets.only(right: 5),child: ClipRRect(child: _image, borderRadius: BorderRadius.circular(8.0),)),
        Stack(
          children: [
            Container(
                constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
                child: ClipRRect(child: _image, borderRadius: BorderRadius.circular(8.0),)),
            Positioned.fill(
              child: Opacity(
                  opacity: .5,
                  child: Container(
                      decoration: BoxDecoration(color: Colors.black, 
                      borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          '+7',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ))),
            )
          ],
          alignment: Alignment.center,
        )
      ]),
    );
  }
}
