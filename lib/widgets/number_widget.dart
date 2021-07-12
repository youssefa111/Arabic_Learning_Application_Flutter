import 'package:arabic_learning_app/screens/congrtz_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NumberWidget extends StatefulWidget {
  final String txt;
  double topPosition;
  double bottomPosition;
  double rightPosition;
  double top;
  double bottom;
  double right;
  static int ind = 0;

  NumberWidget({
    Key key,
    this.txt,
    this.topPosition,
    this.bottomPosition,
    this.rightPosition,
    this.top,
    this.bottom,
    this.right,
  }) : super(key: key);
  set x(int q) {
    ind = q;
  }

  int get x {
    return ind = 0;
  }

  @override
  _NumberWidgetState createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  var numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  static int i = NumberWidget().x;
  Color color = Colors.red;
  int voice = 0;

  void onPlayAudio() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(Audio('lib/assets/game2_voices/$voice.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: widget.topPosition,
      right: widget.rightPosition,
      bottom: widget.bottomPosition,
      duration: Duration(seconds: 2),
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (numList[i] == int.parse(widget.txt)) {
              voice = 1;
              onPlayAudio();
              widget.topPosition = widget.top;
              widget.bottomPosition = widget.bottom;
              widget.rightPosition = widget.right;
              color = Colors.green;

              if (i == 9) {
                i = -1;
                Future.delayed(Duration(milliseconds: 2200)).then(
                  (value) => Navigator.pushReplacementNamed(
                      context, CongratsScreen().route),
                );
              }
              i++;
            } else {
              voice = 0;
              onPlayAudio();
              widget.topPosition = widget.topPosition;
              widget.bottomPosition = widget.bottomPosition;
              widget.rightPosition = widget.rightPosition;
            }
          });
        },
        child: Container(
          margin: const EdgeInsets.all(5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: color),
          child: Center(
            child: Text(
              widget.txt,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
