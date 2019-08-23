import 'package:flutter/material.dart';
import 'package:manga_reader/pages/comic_body.dart';
import 'package:manga_reader/pages/manga_body.dart';
import 'package:manga_reader/pages/search_body.dart';

import 'helper_functions/fetchPost.dart';

class BodyMain extends StatelessWidget {
  final selectedIndex;

  BodyMain({Key key, @required this.selectedIndex}) : super(key: key);

  _showCatagory(BuildContext context) {
    if (selectedIndex == 0) {
      return (SearchBody());
    } else if (selectedIndex == 1) {
      return (MangaBody());
    } else if (selectedIndex == 2) {
      return (ComicBody());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _showCatagory(context));
  }
}
