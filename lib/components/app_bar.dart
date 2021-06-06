import 'package:flutter/material.dart';

class GradientAppBaar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBaar(this.title);

  @override
  Widget build(BuildContext context) {
    
    return new Container(
      padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: barHeight + 20,
      width: double.infinity,
      child: new Container(

        child: Container(
              decoration: new BoxDecoration(
              gradient: new LinearGradient(
              colors: [const Color(0xFF38b6ff), const Color(0xFFffffff)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp), 

              
                image: new DecorationImage(
                image: new AssetImage("logo.png"),
            ),
        ),

         child: Padding(
          padding: const EdgeInsets.only(right: 360),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        ),
      ),
    );
  }
}
