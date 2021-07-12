import 'package:arabic_learning_app/screens/animals_screen.dart';
import 'package:arabic_learning_app/screens/colors_screen.dart';
import 'package:arabic_learning_app/screens/fruits_screen.dart';
import 'package:arabic_learning_app/screens/games_menu_screen.dart';
import 'package:arabic_learning_app/screens/letters_screen.dart';
import 'package:arabic_learning_app/screens/number_screen.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../widgets/home_item.dart';
import 'dart:io';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String route = '/homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double op1 = 0;
  double op2 = 0;
  double op3 = 0;
  double op4 = 0;
  double op5 = 0;
  double op6 = 0;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000)).then((_) {
      setState(() {
        op1 = 1;
      });
    }).then((_) {
      setState(() {
        op2 = 1;
      });
    }).then((_) {
      setState(() {
        op3 = 1;
      });
    }).then((_) {
      setState(() {
        op4 = 1;
      });
    }).then((_) {
      setState(() {
        op5 = 1;
      });
    }).then((_) {
      setState(() {
        op6 = 1;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => showDialog<bool>(
              context: context,
              builder: (c) => AlertDialog(
                title: Text('!تحذير'),
                content: Text('هل حقا تريد الخروج'),
                actions: [
                  FlatButton(
                    child: Text(
                      'نعم',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    onPressed: () => exit(0),
                  ),
                  FlatButton(
                    child: Text(
                      'لا',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    onPressed: () => Navigator.pop(c, false),
                  ),
                ],
              ),
            ),
        child: Scaffold(
          body: Stack(children: [
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                      'lib/assets/categories_images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .7,
                child: FittedBox(
                  child: BorderedText(
                    strokeWidth: 4.0,
                    strokeColor: Colors.black,
                    child: Text(
                      '!مرحبا بك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Center(
                child: GridView(
                  padding: const EdgeInsets.all(25),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  children: [
                    AnimatedOpacity(
                      duration: Duration(milliseconds: 1000),
                      opacity: op1,
                      child: HomeItem('الحروف', Color.fromRGBO(255, 0, 0, 1),
                          "arabic_alphabets.png", LettersScreen().route),
                    ),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 1500),
                        opacity: op2,
                        child: HomeItem('الالوان', Colors.blueAccent,
                            "colors.png", ColorsScreen().route)),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 2000),
                        opacity: op3,
                        child: HomeItem(
                            'الحيوانات',
                            Color.fromRGBO(255, 0, 255, 1),
                            "animals.png",
                            AnimalsScreen().route)),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 2500),
                        opacity: op4,
                        child: HomeItem(
                            'الفواكه',
                            Color.fromRGBO(255, 255, 0, 1),
                            "friuts.png",
                            FruitsScreen().route)),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 3000),
                        opacity: op5,
                        child: HomeItem(
                            'الأرقام',
                            Color.fromRGBO(184, 0, 250, 1),
                            "numbers.png",
                            NumbersScreen().route)),
                    AnimatedOpacity(
                        duration: Duration(milliseconds: 3500),
                        opacity: op6,
                        child: HomeItem(
                            'ألعب',
                            Color.fromRGBO(210, 187, 120, 1),
                            "toys.png",
                            GameMenuScreen().route)),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
