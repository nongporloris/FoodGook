import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'screens/signin.dart';
import 'screens/signup.dart';
//import 'screens/feeds.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Logo with Typer Animated Text example
    Widget example = SplashScreenView(
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
      title: 'Splash screen Demo',
      home: example,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
    );
  }
}
