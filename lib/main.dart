import 'package:arabic_learning_app/screens/animals_screen.dart';
import 'package:arabic_learning_app/screens/colors_screen.dart';
import 'package:arabic_learning_app/screens/congrtz_screen.dart';
import 'package:arabic_learning_app/screens/fruits_screen.dart';
import 'package:arabic_learning_app/screens/game_one_screen.dart';
import 'package:arabic_learning_app/screens/game_two_screen.dart';
import 'package:arabic_learning_app/screens/number_screen.dart';
import './screens/games_menu_screen.dart';
import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import './screens/letters_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Arabic',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: Image.asset('lib/assets/splash_screen_image/Learn.png'),
        nextScreen: HomeScreen(),
        backgroundColor: Colors.amberAccent,
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.scale,
        animationDuration: Duration(seconds: 2),
        splashIconSize: 200,
      ),
      routes: {
        HomeScreen().route: (context) => HomeScreen(),
        AnimalsScreen().route: (context) => AnimalsScreen(),
        ColorsScreen().route: (context) => ColorsScreen(),
        FruitsScreen().route: (context) => FruitsScreen(),
        GameOneScreen().route: (context) => GameOneScreen(),
        LettersScreen().route: (context) => LettersScreen(),
        NumbersScreen().route: (context) => NumbersScreen(),
        CongratsScreen().route: (context) => CongratsScreen(),
        GameMenuScreen().route: (context) => GameMenuScreen(),
        GameTwoScreen().route: (context) => GameTwoScreen(),
      },
    );
  }
}
