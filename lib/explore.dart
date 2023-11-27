import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybar/beer.dart';
import 'package:mybar/gin.dart';
import 'package:mybar/home_list.dart';
import 'package:mybar/rum.dart';
import 'package:mybar/whiskey.dart';
import 'package:mybar/wine.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'vodka.dart';

class Explore extends StatelessWidget {
  const Explore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('MY BAR',
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                ],
                isRepeatingAnimation: true,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Wine(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_11.png",
                    name: "WINE",
                    text: "What does the grape say?"),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Rum(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_12.png",
                    name: "RUM",
                    text: "Muy tropical and muy\nfestive."),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Gin(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_14.png",
                    name: "GIN",
                    text: "A refreshing bever\nage for warm days."),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Vodka(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_9.png",
                    name: "VODKA",
                    text:
                        "This spirit looks good in \nany glass, in anylighting\nand at any time of the day."),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Beer(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_16.png",
                    name: "BEER",
                    text:
                        "Straddle both worlds.\nGo brewski AND mixed\ndrink."),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Whiskey(),
                    ),
                  );
                },
                child: Home_List(
                    image: "assets/images/img_17.png",
                    name: "WHISKEY",
                    text:
                        "Whether you see it as the\nwater of life, gold, a \npreventative medicine "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
