import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybar/list_items.dart';

class Whiskey extends StatelessWidget {
  const Whiskey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_17.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Whiskey",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                      "Whether you see it as the water of life,\ngold, a preventative medicine",
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
              img: "assets/images/img_24.png",
              tittle: 'Irish Shillelagh',
              text1: 'Whiskey',
              text2: "Short",
              text3: "Strong",
              item1: "1/2 parts\nirish Whiskey",
              item2: "1/2 parts\nSloe gin",
              item3: "1 tsp\ndark rum ice",
              name: 'Irish Shillelagh==>RECIPIES',
            ),
            List_Items(
              img: "assets/images/img_30.png",
              tittle: 'Mint Julep',
              text1: 'Whiskey',
              text2: "Classic",
              text3: "Strong",
              item1: "3 parts\nBourbon",
              item2: "1 tsp\nSugar water",
              item3: "4\nMint leaves\n ice ",
              name: 'Mint Julep==>RECIPIES',
            ),
          ],
        ),
      ),
    );
  }
}
