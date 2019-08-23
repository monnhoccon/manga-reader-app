import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  final bookTitle;
  final bookImg;

  const ItemBuilder({Key key, this.bookTitle, this.bookImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Container(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(bookImg, fit: BoxFit.contain),
                Text(bookTitle)
              ],
            ),
          ),
        ));
  }
}
