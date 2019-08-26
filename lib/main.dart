import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:manga_reader/body_miain.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

void main() => runApp(MyApp());

const APP_TITLE = 'NER8er';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Center(
          child: MyHomePage(
            title: APP_TITLE,
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static int selectedIndex = 0;

  Future<Map> fetchPost() async {
    final url = 'https://kitsu.io/api/edge/anime?filter[text]=naruto';
    final response = await http.get(url);
    // return data;

    // final response =
    //     await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      final data = json.decode(response.body);

      print(data);

      return data;
      // return Post.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  void _printThisShit() {
    print(fetchPost());
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    _printThisShit();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.child_care),
              title: Text('Mangas'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Comics'),
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: BodyMain(selectedIndex: selectedIndex));
  }
}
