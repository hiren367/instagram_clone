import 'package:flutter/material.dart';
import 'package:instagram/signin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignIn(),

      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     Image(
      //       image: AssetImage('assets/images/logo.png'),
      //     ),
      //     Form(child: null)
      //   ],
      // ),
    );
  }
}
