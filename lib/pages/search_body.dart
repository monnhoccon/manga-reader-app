import 'package:flutter/material.dart';
import 'package:manga_reader/component/item_each.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          Container(child: Text('YOOO')
              // Center(
              //   child: ItemBuilder(
              //     bookTitle: "Poop Man",
              //     bookImg: "OH SHIT",
              //   ),
              // ),
              ),
        ],
      ),
    );
  }
}
