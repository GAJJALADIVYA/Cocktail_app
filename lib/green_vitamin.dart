import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';

class Green_Vitamin extends StatelessWidget {
  const Green_Vitamin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Green Vitamin Bombs",
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
                    image: AssetImage("assets/images/img_5.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "If you can't eat 'em,drink 'em",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RotateAnimatedText(
                        "If you can't eat 'em,drink 'em",
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
                img: "assets/images/green1.jpg",
                text1: "Ginger Winter Green\nSmoothie",
                text2: "INGREDIENTS",
                text3: "1cup blueberry,2 cups spinach,2cups water,1 ginger ice",
                text4: "HOW TO MIX",
                text5:
                    "add ice to the blender\nadd water spinachg inger blueberry to the blender\nstrain into the collins glass",
              ),
              Home_List_Items(
                img: "assets/images/green2.jpg",
                text1: "Green Slime Smoothie",
                text2: "INGREDIENTS",
                text3:
                    "2 cups spinach,2cups strawberry,1piece banana,2tbsp honey ice",
                text4: "HOW TO MIX",
                text5:
                    "add strawberry spinach banana ice honey to the blender\nblend together\nstrain into the cocktail glass",
              )
            ],
          ),
        ),
      ),
    );
  }
}
