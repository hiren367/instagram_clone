import 'package:flutter/material.dart';
import 'package:instagram/loginscreen.dart';
// import 'homepage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage());
      title: 'Instagram Clone',
      home: LoginScreen(),
    );
  }
}
