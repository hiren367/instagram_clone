import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  _showNumber(value) => value;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _showNumber(12),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            'There was an error',
            style: TextStyle(
              color: Colors.red,
            ),
          );
        } else if (snapshot.hasData) {
          return Text(
            'This has data',
            style: Theme.of(context).textTheme.headline,
          );
        } else {
          return Text(
            'No value yet!',
            style: Theme.of(context).textTheme.headline,
          );
        }
      },
    );
  }
}
