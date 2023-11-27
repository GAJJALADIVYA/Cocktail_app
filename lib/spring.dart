import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';
import 'home_list_items.dart';

class Spring extends StatelessWidget {
  const Spring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "SPRING",
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
                    image: AssetImage("assets/images/img_6.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "Oh,that spring in your step",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RotateAnimatedText(
                        "Oh,that spring in your step",
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
                img: "assets/images/spring1.jpg",
                text1: "Citrus Splash",
                text2: "INGREDIENTS",
                text3:
                    "2 parts Vodka,4 parts Sprite,1 splash grapefruite juice ice",
                text4: "HOW TO MIX",
                text5:
                    "fill up the old fashioned glass with ice\npour vodkagrapefruit juiceSprite into the collins glass\ngarnish with mint leaves",
              ),
              Home_List_Items(
                img: "assets/images/spring2.jpg",
                text1: "Cranberry Cooler",
                text2: "INGREDIENTS",
                text3:
                    "1 parts lemon juice,4 parts cranberry juice,2 parts apple juice,1part club soda ice",
                text4: "HOW TO MIX",
                text5:
                    "fill up the collins glass with ice\npour club sodaapple juicecranberry juicelemon juice into the glass\ngarnish with lime wedge",
              )
            ],
          ),
        ),
      ),
    );
  }
}
