import 'package:flutter/material.dart';
import 'package:manga_reader/component/item_each.dart';

class MangaBody extends StatelessWidget {
  const MangaBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ItemBuilder(
            bookImg: 'default.png',
            bookTitle: 'Naruto',
          );
        },
      ),
    );
  }
}
