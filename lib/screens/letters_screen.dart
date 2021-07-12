import 'package:arabic_learning_app/home/home_screen.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: must_be_immutable
class LettersScreen extends StatefulWidget {
  String route = '/lettersScreen';
  @override
  _LettersScreenState createState() => _LettersScreenState();
}

class _LettersScreenState extends State<LettersScreen> {
  var letterList = [
    "أ",
    "ب",
    "ت",
    "ث",
    "ج",
    "ح",
    "خ",
    "د",
    "ذ",
    "ر",
    "ز",
    "س",
    "ش",
    "ص",
    "ض",
    "ط",
    "ظ",
    "ع",
    "غ",
    "ف",
    "ق",
    "ك",
    "ل",
    "م",
    "ن",
    "ه",
    "و",
    "ي"
  ];
  int index = 0;

  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio('lib/assets/letters_voices/${index + 1}.mp3'));
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
                      context, HomeScreen().route);
                },
                iconSize: 65,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 80,
                          ),
                          onPressed: () {
                            setState(() {
                              if (index == 0) {
                                return;
                              }
                              index--;
                            });
                          }),
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                        child: BorderedText(
                          strokeWidth: 4.0,
                          strokeColor: Colors.black,
                          child: Text(
                            letterList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 80,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 80,
                          ),
                          onPressed: () {
                            setState(() {
                              if (index == 27) {
                                return;
                              }
                              index++;
                            });
                          }),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: InkWell(
                        onTap: onPlayAudio,
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
                              color: Colors.amberAccent),
                          child: FittedBox(
                            child: Text(
                              'اسمع',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 45),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        )));
  }
}
