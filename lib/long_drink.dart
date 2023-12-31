import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'list_items.dart';
import 'splashscreen.dart';
import 'home_list_items.dart';

class Long_drink extends StatelessWidget {
  const Long_drink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "LONG DRINKS",
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
                    image: AssetImage("assets/images/img_3.png"),
                  ),
                ),
                height: 200,
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        "Tall, dark and handsome.",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      RotateAnimatedText(
                        "Tall, dark and handsome.",
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
                img: "assets/images/img_28.png",
                text1: "Harvey Weissbanger",
                text2: "INGREDIENTS",
                text3:
                    "1/2 parts Galliano,3parts Orange juice,9 parts Wheat Beer",
                text4: "HOW TO MIX",
                text5:
                    "fill up the beer glass with ice\npour Wheat beer orange juice Galliano into the glass\nStir together\ngarnish with orange peel",
              ),
              Home_List_Items(
                img: "assets/images/img_15.png",
                text1: "Harvey Weissbanger",
                text2: "INGREDIENTS",
                text3:
                    "1/2 parts Galliano,3parts Orange juice,9 parts Wheat Beer",
                text4: "HOW TO MIX",
                text5:
                    "fill up the beer glass with ice\npour Wheat beer orange juice Galliano into the glass\nStir together\ngarnish with orange peel",
              )
            ],
          ),
        ),
      ),
    );
  }
}
