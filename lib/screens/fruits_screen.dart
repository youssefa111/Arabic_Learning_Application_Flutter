import 'package:arabic_learning_app/home/home_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FruitsScreen extends StatefulWidget {
  String route = '/fruitsScreen';
  @override
  _FruitsScreenState createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  int index = 0;
  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio('lib/assets/fruits_voices/$index.mp3'));
  }

  var animalList = [];

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
                      Container(
                        height: 100,
                        width: 200,
                        margin: const EdgeInsets.all(5),
                        child:
                            Image.asset('lib/assets/fruits_images/$index.png'),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 80,
                          ),
                          onPressed: () {
                            setState(() {
                              if (index == 9) {
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
