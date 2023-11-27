import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';

class Beach extends StatelessWidget {
  const Beach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "BEACH",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.4),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_4.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "Babes,Beef,Bonfires",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RotateAnimatedText(
                        "Babes,Beef,Bonfires",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Home_List_Items(
                img: "assets/images/beach1.jpg",
                text1: "Caipirissima",
                text2: "INGREDIENTS",
                text3:
                    "2 parts white rum,3/4 sugar syrup,4 lime wedges\ncrushed ice",
                text4: "HOW TO MIX",
                text5:
                    "fill up the shaker with ice cubes\nfill up the old fashioned glass with crushed ice\ncrush sugar syruplime wedge with muddler",
              ),
              Home_List_Items(
                img: "assets/images/beach2.jpg",
                text1: "Sea Breeze",
                text2: "INGREDIENTS",
                text3:
                    "2 parts Vodka,1/2 parts grapefruit juice,6parts cranberry juice\nice cubes",
                text4: "HOW TO MIX",
                text5:
                    "fill up the collins glass with ice\npour cranberry juicegrapefruit juicevodka into the glass\ngarnish with lime wedge",
              )
            ],
          ),
        ),
      ),
    );
  }
}
