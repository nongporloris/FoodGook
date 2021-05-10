// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:foodgook/bottomNav.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Feeds extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNav(),
    );
  }
}
