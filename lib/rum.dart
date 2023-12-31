import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mybar/home.dart';
import 'package:flutter/material.dart';
import 'list_items.dart';

class Rum extends StatefulWidget {
  const Rum({super.key});

  @override
  State<Rum> createState() => _RumState();
}

class _RumState extends State<Rum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_12.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "RUM",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText("Muy tropical and muy festive.",
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
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
              img: "assets/images/img_19.png",
              tittle: "Caipirissima",
              text1: 'RUM',
              text2: "Strong",
              text3: "Short",
              item1: "2 parts\nWhite rum",
              item2: "3/4 parts\nSugar syrup",
              item3: "4 lime wedges\nClub soda\n ice",
              name: 'Caipirissima==>RECIPIES',
            ),
            List_Items(
              img: "assets/images/img_26.png",
              tittle: "Ski Lift",
              text1: 'RUM',
              text2: "Hot",
              text3: "Medium",
              item1: "1 part\nWhite rum",
              item2: "1/2 parts\nCocunut liqueur",
              item3: "4 Hot chocolate\n ice",
              name: 'Ski Lift==>RECIPIES',
            ),
          ],
        ),
      ),
    );
  }
}
