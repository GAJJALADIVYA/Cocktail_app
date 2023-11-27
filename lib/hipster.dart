import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';
import 'home_list_items.dart';

class Hipster extends StatelessWidget {
  const Hipster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "HIPSTER",
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
                    image: AssetImage("assets/images/img_7.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "I liked it before it was cool",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RotateAnimatedText(
                        "I liked it before it was cool",
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
                img: "assets/images/hiper.jpg",
                text1: "Sea Bottom",
                text2: "INGREDIENTS",
                text3:
                    "2 parts vodka,2parts irish cream ,2parts blue curacao,3 parts cola ice",
                text4: "HOW TO MIX",
                text5:
                    "add ice to the collins glass\npour vodkairish cream into the glass\nfill up the glass with cola\nadd Blue Curacao to the glass\ngarnish with",
              ),
              Home_List_Items(
                img: "assets/images/hiper1.jpg",
                text1: "Sweet Veggie Smoothie",
                text2: "INGREDIENTS",
                text3:
                    "1 cup apple juice,1cup apple,1/2cups carrot,1/2cups cucumber,1 dash cinnamon ice",
                text4: "HOW TO MIX",
                text5:
                    "add ice to the blender\nadd cucumber carrot apple juiceapple to the blender\nadd cinnamon to the glass",
              )
            ],
          ),
        ),
      ),
    );
  }
}
