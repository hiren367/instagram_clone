// import 'package:flutter_app/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:instagram/homepage.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwController = TextEditingController();

  //  method is executed when the page is destroyed, and the controller created in it must be destroyed.
  // otherwise Otherwise, even if you move to another page after the page ends, it will remain in memory, causing unnecessary resource waste.
  @override
  void dispose() {
    _emailController.dispose();
    _pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Spacer(flex: 6),
                Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                  height: 50,
                  // fit: BoxFit.fitWidth,
                  excludeFromSemantics: false,
                ),
                Spacer(flex: 1),
                _getTextFormField('Email'),
                Spacer(flex: 1),
                _getTextFormField('Password'),
                Spacer(flex: 1),
                _forgetPassword(),
                Spacer(flex: 2),
                _confirmBtn(),
                Spacer(flex: 2),
                _orLine(),
                Spacer(flex: 2),
                _loginFacebook(),
                Spacer(flex: 2),
                Spacer(flex: 6)
              ],
            ),
          ),
        ));
  }

  TextFormField _getTextFormField(label) {
    return TextFormField(
        controller: (label) == 'Email' ? _emailController : _pwController,
        obscureText: (label) == 'Password' ? true : false,
        decoration: _getInputBoxDecorated(label),
        validator: (String value) {
          if ((label) == 'Email' ? value.contains('@') : value.isNotEmpty) {
            return null;
          } else {
            return 'Enter valid email';
          }
        });
  }

  Text _forgetPassword() {
    return Text(
      'Forget password?',
      textAlign: TextAlign.end,
      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue[700]),
    );
  }

  InputDecoration _getInputBoxDecorated(hint) {
    return InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300], width: 1),
          borderRadius: BorderRadius.circular(12),
        ));
  }

  FlatButton _confirmBtn() {
    return FlatButton(
      onPressed: () {
        if (_formKey.currentState.validate()) {
          final route = MaterialPageRoute(builder: (context) => HomePage());
          Navigator.push(context, route);
        }
      },
      child: Text('Login',
          style: TextStyle(
            color: Colors.white,
          )),
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      disabledColor: Colors.blue[100],
    );
  }

  Stack _orLine() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          height: 1,
          child: Container(
            height: 3,
            color: Colors.grey[300],
          ),
        ),
        Container(height: 3, width: 50, color: Colors.grey[50]),
        Text('OR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }

  FlatButton _loginFacebook() {
    return FlatButton.icon(
      textColor: Colors.blue,
      onPressed: () {
        simpleSnackBar(context, 'Login with Facebook');
      },
      icon: ImageIcon(
        AssetImage('assets/images/facebook.png'),
      ),
      label: Text('Login with Facebook'),
    );
  }

  simpleSnackBar(BuildContext context, String text) {
    Widget snackbar = Center(child: SnackBar(content: Text(text)));
    Scaffold.of(context).showSnackBar(snackbar);
  }
}
