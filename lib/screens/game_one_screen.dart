import 'package:arabic_learning_app/screens/congrtz_screen.dart';
import 'package:arabic_learning_app/screens/games_menu_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameOneScreen extends StatefulWidget {
  String route = '/gameScreen';
  @override
  _GameOneScreenState createState() => _GameOneScreenState();
}

class _GameOneScreenState extends State<GameOneScreen> {
  int index = 0;
  int voice = 0;
  var colorl = [Colors.red, Colors.green];
  var defColor0 = Colors.amberAccent;
  var defColor1 = Colors.amberAccent;
  var defColor2 = Colors.amberAccent;

  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(Audio('lib/assets/answers_voices/$voice.mp3'));
  }

  var quizMap = {
    0: ['قطة', 'بقرة', 'ثعلب'],
    1: ['نمر', 'حصان', 'فيل'],
    2: ['قطة', 'بغباء', 'فيل'],
    3: ['اسد', 'نمر', 'زرافة'],
    4: ['فراشة', 'كلب', 'ثعبان'],
  };
  var answers = [0, 1, 2, 1, 2];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                      'lib/assets/categories_images/background.png'),
                  fit: BoxFit.cover,
                ),
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
                  return Navigator.pushReplacementNamed(
                      context, GameMenuScreen().route);
                },
                iconSize: 65,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Level ${index + 1}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    margin: const EdgeInsets.all(5),
                    child: Image.asset('lib/assets/quiz_images/$index.png'),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (0 == answers[index]) {
                                  voice = 1;
                                  defColor0 = Colors.greenAccent;
                                  onPlayAudio();
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor0 = Colors.amberAccent;
                                    });
                                  });
                                  if (index == 4) {
                                    return;
                                  }
                                  Future.delayed(Duration(milliseconds: 600))
                                      .then((_) {
                                    setState(() {
                                      index++;
                                    });
                                  });
                                } else {
                                  voice = 0;
                                  defColor0 = Colors.redAccent;
                                  onPlayAudio();
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor0 = Colors.amberAccent;
                                    });
                                  });
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                  color: defColor0),
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    quizMap[index][0],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (1 == answers[index]) {
                                  voice = 1;
                                  onPlayAudio();
                                  defColor1 = Colors.greenAccent;
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor1 = Colors.amberAccent;
                                    });
                                  });
                                  if (index == 4) {
                                    return;
                                  }
                                  Future.delayed(Duration(milliseconds: 600))
                                      .then((_) {
                                    setState(() {
                                      index++;
                                    });
                                  });
                                } else {
                                  voice = 0;
                                  onPlayAudio();
                                  defColor1 = Colors.redAccent;
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor1 = Colors.amberAccent;
                                    });
                                  });
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                  color: defColor1),
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    quizMap[index][1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (2 == answers[index]) {
                                  voice = 1;
                                  onPlayAudio();
                                  defColor2 = Colors.greenAccent;
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor2 = Colors.amberAccent;
                                    });
                                  });
                                  Future.delayed(Duration(milliseconds: 600))
                                      .then((_) {
                                    setState(() {
                                      index++;
                                    });
                                  });
                                  if (index >= 4) {
                                    return Navigator.pushReplacementNamed(
                                        context, CongratsScreen().route);
                                  }
                                } else {
                                  voice = 0;
                                  onPlayAudio();
                                  defColor2 = Colors.redAccent;
                                  Future.delayed(Duration(milliseconds: 500))
                                      .then((_) {
                                    setState(() {
                                      defColor2 = Colors.amberAccent;
                                    });
                                  });
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(2.0,
                                          2.0), // shadow direction: bottom right
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                  color: defColor2),
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    quizMap[index][2],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
