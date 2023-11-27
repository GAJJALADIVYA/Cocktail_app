import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'list_items.dart';
import 'explore.dart';

class Gin extends StatelessWidget {
  const Gin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_14.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GIN",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText("A refreshing bever age for warm days.",
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            List_Items(
              img: "assets/images/img_20.png",
              tittle: "Negroni",
              text1: 'GIN',
              text2: "Classic",
              text3: "Short",
              item1: "1.5 parts\ngin",
              item2: "1/5 parts\nSweet vermouth",
              item3: "1/5 part\n campari",
              name: 'Negroni==>RECIPIES',
            ),
            List_Items(
              img: "assets/images/img_27.png",
              tittle: "Gin Tonic",
              text1: 'GIN',
              text2: "Longdrink",
              text3: "Light",
              item1: "2 parts\nGin",
              item2: "4 parts\nTonic",
              item3: "1 part\n Ice cubes",
              name: 'Gin Tonic==>RECIPIES',
            ),
          ],
        ),
      ),
    );
  }
}
