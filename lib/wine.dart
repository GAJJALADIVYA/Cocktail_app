import 'package:flutter/material.dart';
import 'package:mybar/home.dart';
import 'package:mybar/list_items.dart';
import 'package:mybar/bottom_bar.dart';
import 'package:mybar/home_list.dart';
import 'home.dart';
import 'explore.dart';

class ExploreWine extends StatelessWidget {
  const ExploreWine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_11.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WINE",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "What does the grape say",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
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
              img: "assets/images/img_18.png",
              tittle: 'Spritz Veneziano',
              text1: 'WINE',
              text2: "Classic",
              text3: "Light",
              item1: "3 parts\nPROSECCO",
              item2: "2 parts\nAPEROL",
              item3: "1 Splash\nClub soda\n ice",
            ),
            List_Items(
              img: "assets/images/img_25.png",
              tittle: 'Bellini',
              text1: 'WINE',
              text2: "Classic",
              text3: "Light",
              item1: "5 parts\nPROSECCO",
              item2: "2.5 parts\nPeach Juice",
              item3: "1 Splash\n ice",
            ),
          ],
        ),
      ),
    );
  }
}
