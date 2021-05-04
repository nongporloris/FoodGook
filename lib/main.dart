import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'screens/signin.dart';
import 'screens/signup.dart';
//import 'screens/feeds.dart';

void main() {
  runApp(MyApp());
}

//splash screen
class MyApp extends StatelessWidget {
  //root
  @override
  Widget build(BuildContext context) {
    /// Logo with Typer Animated Text example
    Widget splash = SplashScreenView(
      //package: splash_screen_view
      home: MyHomePage(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "FoodGook",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
      backgroundColor: Color(0xffff6240),
    );

    return MaterialApp(
      title: 'FoodGook',
      home: splash, //this file
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
    );
  }
}
