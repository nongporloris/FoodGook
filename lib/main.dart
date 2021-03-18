import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Logo with Typer Animated Text example
    Widget example3 = SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "FoodGook",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
      backgroundColor: Colors.red,
    );

    /// Logo with Normal Text example
    Widget example5 = SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "FoodGook",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
      backgroundColor: Colors.red,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      home: example3, //3,5
      debugShowCheckedModeBanner: false,
    );
  }
}
