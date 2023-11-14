import 'package:flutter/material.dart';
import 'package:mybar/list_items.dart';

class Explore_wsiskey extends StatelessWidget {
  const Explore_wsiskey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_17.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Whiskey",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "Whether you see it as the water of life,\ngold, a preventative medicine",
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
            img: "assets/images/img_24.png",
            tittle: 'Irish Shillelagh',
            text1: 'Whiskey',
            text2: "Short",
            text3: "Strong",
            item1: "1/2 parts\nirish Whiskey",
            item2: "1/2 parts\nSloe gin",
            item3: "1 tsp\ndark rum ice",
          ),
        ],
      ),
    );
  }
}
