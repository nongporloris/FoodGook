import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'signin.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Logo with Typer Animated Text example
    Widget example = SplashScreenView(
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
      backgroundColor: Colors.orange[900],
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
