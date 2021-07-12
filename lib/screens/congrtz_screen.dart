import 'package:arabic_learning_app/home/home_screen.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CongratsScreen extends StatelessWidget {
  String route = '/congratScreen';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(
                      'lib/assets/categories_images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: FittedBox(
                      child: BorderedText(
                        strokeWidth: 4.0,
                        strokeColor: Colors.black,
                        child: Text(
                          'congratulations!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .1),
                  FlatButton(
                    onPressed: () {
                      return Navigator.pushReplacementNamed(
                          context, HomeScreen().route);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: FittedBox(
                        child: Text(
                          "الرجوع الي القائمة",
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
                    color: Colors.amber,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
