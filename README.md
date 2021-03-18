
# <div align="center">Splash Screen</div>

<div align="center">A flutter package which contains a collection of Splash Screen example for your app to display logo and different text style.
</div><br>

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Table of contents

 * [Installing](#installing)
 * [Usage](#usage)
    * [Only Logo](#SimpleLogo)
   * [Logo with Simple Text](#LogoWithText)
   * [Colorize Animated Text](#ColorizeText)
   * [Scale Animated Text](#ScaleText)
   * [Typer Animated Text](#typewriterText)
 * [Bugs or Requests](#bugs-or-requests)
 * [Donate](#donate)
 * [License](#license)


# Installing

### 1. Depend on it
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  splash_screen_view: ^1.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```css
$ pub get
```

with `Flutter`:

```css
$ flutter packages get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:splash_screen_view/SplashScreenView.dart';
```


# Usage


## SimpleLogo

<img src="https://github.com/SandipVKalola/splash_screen/blob/master/display/OnlyImage.gif?raw=true" align = "right" height = "400px">

```dart
SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 200,
      imageSrc: "logo.png",
      backgroundColor: Colors.white,
    );
```
[Where]:
 - home (required)- Name of target screen which you want to display after completion of splash screen milliseconds.
 - duration (required) - Delay between the splash screen and target screen. Provider Duration in millisecond.
 - imageSrc (required)- Assets path for your logo which your want to display on splash screen.
 - imageSize - Size of your logo. By default it is 150.
 - backgroundColor - Background color of splash screen. By default it is white color.


## LogoWithText

<img src="https://github.com/SandipVKalola/splash_screen/blob/master/display/Normal.gif?raw=true" align = "right"  height = "400px">

```dart
SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "Normal Text",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
```
[Where]:
 - text - Text which you want to show below logo.
 - textType - Gives text type as TextType.NormalText
 - textStyle - Gives TextStyle to the text strings.
**Note:** Give `imageSrc` as blank If you want only text on your splash screen.

## ColorizeText

<img src="https://github.com/SandipVKalola/splash_screen/blob/master/display/ColorizeAnimatedText.gif?raw=true" align = "right"  height = "400px">

```dart
SplashScreenView(
      home: SecondScreen(),
      duration: 5000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "Colorize Text",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
```
[Where]:
 - textType - Gives text type as TextType.ColorizeAnimationText
 - colors - Set the colors for the gradient animation of the text. Give List with values of [Color] in it.
**Note:** `colors` list should contains at least two values.


## ScaleText

<img src="https://github.com/SandipVKalola/splash_screen/blob/master/display/ScaleAnimatedText.gif?raw=true" align = "right"  height = "400px">

```dart
SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "Scale Animated Text",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
```
[Where]:
 - textType - Gives text type as TextType.ScaleAnimatedText


## typewriterText

<img src="https://github.com/SandipVKalola/splash_screen/blob/master/display/TyperAnimatedText.gif?raw=true" align = "right"  height = "400px"> 

```dart
SplashScreenView(
      home: SecondScreen(),
      duration: 3000,
      imageSize: 100,
      imageSrc: "logo.png",
      text: "Typer Animated Text",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
```
[Where]:
 - textType - Gives text type as TextType.TyperAnimatedText

# Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/SandipVKalola/splash_screen/issues/new?template=bug_report.md). If you feel the library is missing a feature, please raise a [ticket](https://github.com/SandipVKalola/splash_screen/issues/new?template=feature_request.md) on GitHub and I'll look into it. Pull request are also welcome.


## pub.dev Link
https://pub.dev/packages/splash_screen_view

# Donate
> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of :coffee:
>
> - [PayPal](https://paypal.me/sandipkalola)

# License
Splash Screen is licensed under `MIT license`. View [license](https://github.com/SandipVKalola/splash_screen/blob/master/LICENSE).
