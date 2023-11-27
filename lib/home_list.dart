import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybar/home.dart';
import 'package:mybar/vodka.dart';
import 'list_items.dart';

class Home_List extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  const Home_List(
      {super.key, required this.image, required this.name, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 0.4),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      text,
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                  totalRepeatCount: 20,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
