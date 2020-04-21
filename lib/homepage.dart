import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'feed.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isSignedIn = false;

  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          width: 250,
          alignment: Alignment.bottomCenter,
          height: 40,
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.camera,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Feather.tv,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {
              currentPage = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.plus_square),
              title: Text('Upload'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              title: Text('Likes'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.user),
              title: Text('Account'),
            ),
          ]),
    );
  }
}
