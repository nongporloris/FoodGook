import 'package:flutter/material.dart';
import 'signin.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blueAccent,
              onSurface: Colors.grey),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
