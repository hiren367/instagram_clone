import 'package:flutter/material.dart';
import 'package:instagram/widgets/signInForm.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          SignInForm(),
          _gotoSignUpPageBtn(context),
        ],
      ),
    ));
  }
}

Positioned _gotoSignUpPageBtn(BuildContext context) {
  return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 40.0,
      child: FlatButton(
        shape: Border(
          top: BorderSide(
            color: Colors.grey[300],
          ),
        ),
        onPressed: null,
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Don\'t have account? ',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                )),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue[600]),
            )
          ]),
        ),
      ));
}
