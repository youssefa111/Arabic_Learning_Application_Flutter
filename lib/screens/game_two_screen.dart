import 'package:arabic_learning_app/screens/games_menu_screen.dart';
import 'package:arabic_learning_app/widgets/number_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class GameTwoScreen extends StatefulWidget {
  String route = 'gameTwoScreen';
  @override
  _GameTwoScreenState createState() => _GameTwoScreenState();
}

class _GameTwoScreenState extends State<GameTwoScreen> {
  List<int> numList = [7, 2, 4, 9, 5, 1, 8, 3, 10, 6];

  var numPos = {
    1: [265.0, 350.0, 310.0],
    2: [265.0, 350.0, 240.0],
    3: [265.0, 350.0, 170.0],
    4: [265.0, 350.0, 100.0],
    5: [265.0, 350.0, 30.0],
    6: [345.0, 270.0, 310.0],
    7: [345.0, 270.0, 240.0],
    8: [345.0, 270.0, 170.0],
    9: [345.0, 270.0, 100.0],
    10: [345.0, 270.0, 30.0],
  };
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('lib/assets/categories_images/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, 30.0),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.amberAccent,
              ),
              onPressed: () {
                NumberWidget().x = 0;
                Navigator.pushReplacementNamed(context, GameMenuScreen().route);
              },
              iconSize: 65,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .28,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          NumberWidget(
            txt: numList[index].toString(),
            top: numPos[numList[index]][0],
            bottom: numPos[numList[index]][1],
            right: numPos[numList[index]][2],
            bottomPosition: 150,
            rightPosition: 210,
            topPosition: 465,
          ),
          NumberWidget(
            txt: numList[index + 1].toString(),
            top: numPos[numList[index + 1]][0],
            bottom: numPos[numList[index + 1]][1],
            right: numPos[numList[index + 1]][2],
            bottomPosition: 150,
            rightPosition: 130,
            topPosition: 465,
          ),
          NumberWidget(
            txt: numList[index + 2].toString(),
            top: numPos[numList[index + 2]][0],
            bottom: numPos[numList[index + 2]][1],
            right: numPos[numList[index + 2]][2],
            bottomPosition: 70,
            rightPosition: 250,
            topPosition: 545,
          ),
          NumberWidget(
            txt: numList[index + 3].toString(),
            top: numPos[numList[index + 3]][0],
            bottom: numPos[numList[index + 3]][1],
            right: numPos[numList[index + 3]][2],
            bottomPosition: 70,
            rightPosition: 170,
            topPosition: 545,
          ),
          NumberWidget(
            txt: numList[index + 4].toString(),
            top: numPos[numList[index + 4]][0],
            bottom: numPos[numList[index + 4]][1],
            right: numPos[numList[index + 4]][2],
            bottomPosition: 70,
            rightPosition: 90,
            topPosition: 545,
          ),
          NumberWidget(
            txt: numList[index + 5].toString(),
            top: numPos[numList[index + 5]][0],
            bottom: numPos[numList[index + 5]][1],
            right: numPos[numList[index + 5]][2],
            bottomPosition: 470,
            rightPosition: 210,
            topPosition: 145,
          ),
          NumberWidget(
            txt: numList[index + 6].toString(),
            top: numPos[numList[index + 6]][0],
            bottom: numPos[numList[index + 6]][1],
            right: numPos[numList[index + 6]][2],
            bottomPosition: 470,
            rightPosition: 130,
            topPosition: 145,
          ),
          NumberWidget(
            txt: numList[index + 7].toString(),
            top: numPos[numList[index + 7]][0],
            bottom: numPos[numList[index + 7]][1],
            right: numPos[numList[index + 7]][2],
            bottomPosition: 550,
            rightPosition: 250,
            topPosition: 65,
          ),
          NumberWidget(
            txt: numList[index + 8].toString(),
            top: numPos[numList[index + 8]][0],
            bottom: numPos[numList[index + 8]][1],
            right: numPos[numList[index + 8]][2],
            bottomPosition: 550,
            rightPosition: 170,
            topPosition: 65,
          ),
          NumberWidget(
            txt: numList[index + 9].toString(),
            top: numPos[numList[index + 9]][0],
            bottom: numPos[numList[index + 9]][1],
            right: numPos[numList[index + 9]][2],
            bottomPosition: 550,
            rightPosition: 90,
            topPosition: 65,
          ),
        ],
      ),
    );
  }
}
