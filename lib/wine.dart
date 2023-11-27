import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybar/home.dart';
import 'package:mybar/list_items.dart';
import 'package:mybar/bottom_bar.dart';
import 'package:mybar/home_list.dart';
import 'explore.dart';

class Wine extends StatefulWidget {
  const Wine({super.key});

  @override
  State<Wine> createState() => WineState();
}

class WineState extends State<Wine> {
  int add = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_11.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WINE",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText("What does the grape say",
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
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
              img: "assets/images/img_18.png",
              tittle: 'Spritz Veneziano',
              text1: 'WINE',
              text2: "Classic",
              text3: "Light",
              item1: "3 parts\nPROSECCO",
              item2: "2 parts\nAPEROL",
              item3: "1 Splash\nClub soda\n ice",
              name: "Spritz Veneziano==>RECIPIES",
            ),
            List_Items(
              img: "assets/images/img_25.png",
              tittle: 'Bellini',
              text1: 'WINE',
              text2: "Classic",
              text3: "Light",
              item1: "5 parts\nPROSECCO",
              item2: "2.5 parts\nPeach Juice",
              item3: "1 Splash\n ice",
              name: 'Bellini==>RECIPIES',
            ),
          ],
        ),
      ),
    );
  }
}
