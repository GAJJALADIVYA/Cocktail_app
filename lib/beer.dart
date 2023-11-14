import 'package:flutter/material.dart';
import 'list_items.dart';
import 'explore.dart';

class Explore_Beer extends StatelessWidget {
  const Explore_Beer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_16.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BEER",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "Straddle both worlds.Go brewski and \nmixed drink.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          List_Items(
            img: "assets/images/img_22.png",
            tittle: 'Steamroller',
            text1: 'BEER',
            text2: "LongDrink",
            text3: "Light",
            item1: "1/2 parts\nElderflower",
            item2: "1/2 parts\nWhiskey",
            item3: "10 parts\nBeer ice",
          ),
        ],
      ),
    );
  }
}
