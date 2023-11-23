import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'list_items.dart';
import 'explore.dart';

class Explore_Beer extends StatelessWidget {
  const Explore_Beer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_16.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BEER",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                      "Straddle both worlds.Go brewski and \nmixed drink.",
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
                onTap: () {
                  print("Tap Event");
                },
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
              img: "assets/images/img_22.png",
              tittle: 'Steamroller',
              text1: 'BEER',
              text2: "LongDrink",
              text3: "Light",
              item1: "1/2 parts\nElderflower",
              item2: "1/2 parts\nWhiskey",
              item3: "10 parts\nBeer ice",
            ),
            List_Items(
              img: "assets/images/img_28.png",
              tittle: 'Harvey\nWeissbanger',
              text1: 'BEER',
              text2: "LongDrink",
              text3: "Light",
              item1: "1/2 parts\nGalliano",
              item2: "1/2 parts\nOrange juice",
              item3: "9 parts\nWhite beer\n ice cubes",
            ),
          ],
        ),
      ),
    );
  }
}
