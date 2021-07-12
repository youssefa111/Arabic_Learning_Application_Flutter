import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final Color color;
  final String img;
  final String routeName;

  HomeItem(this.title, this.color, this.img, this.routeName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return Navigator.pushReplacementNamed(context, routeName);
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black),
            color: Colors.amberAccent),
        child: GridTile(
          child: Container(
            child: Image.asset('lib/assets/categories_images/$img',
                fit: BoxFit.fill),
          ),
          footer: GridTileBar(
            title: FittedBox(
              child: BorderedText(
                strokeWidth: 4.0,
                strokeColor: Colors.black,
                child: Text(
                  this.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: this.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
