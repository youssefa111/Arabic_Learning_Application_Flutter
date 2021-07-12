import 'package:arabic_learning_app/home/home_screen.dart';
import 'package:arabic_learning_app/screens/game_one_screen.dart';
import 'package:arabic_learning_app/screens/game_two_screen.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameMenuScreen extends StatelessWidget {
  String route = "/gameMenuScreen";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'lib/assets/categories_images/background.png'),
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
                  return Navigator.pushNamed(context, HomeScreen().route);
                },
                iconSize: 65,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width * .7,
                child: FittedBox(
                  child: BorderedText(
                    strokeWidth: 4.0,
                    strokeColor: Colors.black,
                    child: Text(
                      'قائمة الألعاب',
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, GameOneScreen().route);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: FittedBox(
                        child: Text(
                          "أختار الاجابة الصحيحة",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.amberAccent,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, GameTwoScreen().route);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: FittedBox(
                        child: Text(
                          " رتب الأرقام بالتسلسل",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
