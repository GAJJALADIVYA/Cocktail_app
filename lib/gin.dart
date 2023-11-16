import 'package:flutter/material.dart';
import 'list_items.dart';
import 'explore.dart';

class Explore_Gin extends StatelessWidget {
  const Explore_Gin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_14.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GIN",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "A refreshing bever age for warm days.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
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
              img: "assets/images/img_20.png",
              tittle: "Negroni",
              text1: 'GIN',
              text2: "Classic",
              text3: "Short",
              item1: "1.5 parts\ngin",
              item2: "1/5 parts\nSweet vermouth",
              item3: "1/5 part\n campari",
            ),
            List_Items(
              img: "assets/images/img_27.png",
              tittle: "Gin Tonic",
              text1: 'GIN',
              text2: "Longdrink",
              text3: "Light",
              item1: "2 parts\nGin",
              item2: "4 parts\nTonic",
              item3: "1 part\n Ice cubes",
            ),
          ],
        ),
      ),
    );
  }
}
