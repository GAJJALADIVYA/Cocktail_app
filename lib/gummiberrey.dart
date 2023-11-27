import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';

class Gummiberrey extends StatelessWidget {
  const Gummiberrey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Gummi Bear's Favorite",
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
                    image: AssetImage("assets/images/img_2.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "Gummiberrey jice is made of\nmagic berries",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                    totalRepeatCount: 20,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: false,
                    stopPauseOnTap: false,
                  ),
                ),
              ),
              Home_List_Items(
                img: "assets/images/gummi.jpg",
                text1: "Blueberry Smoothie",
                text2: "INGREDIENTS",
                text3:
                    "1/2 parts blueberry,1/2cup pineapple,1cup pineapple juice ,3/4cups yogurt,ice",
                text4: "HOW TO MIX",
                text5:
                    "add ice to the blender\nadd yogurt pineapple juice pineapple blueberry to the blender\nblend together\nstrain into the snifter glass",
              ),
              Home_List_Items(
                img: "assets/images/gummi1.jpg",
                text1: "Muddy Water",
                text2: "INGREDIENTS",
                text3:
                    "2 parts white rum,4part cola,2part orange juice.ice cubes",
                text4: "HOW TO MIX",
                text5:
                    "fill up the collins glass with ice cubes\npour white rum orange juice cola\ninto the glass\nstir together\ngarnish with lemon spiral",
              )
            ],
          ),
        ),
      ),
    );
  }
}
