import 'package:mybar/home.dart';
import 'package:flutter/material.dart';
import 'list_items.dart';

class Explore_Rum extends StatelessWidget {
  const Explore_Rum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_12.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "RUM",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "Muy tropical and muy festive. Arrrrrgh.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          List_Items(
            img: "assets/images/img_19.png",
            tittle: "Caipirissima",
            text1: 'RUM',
            text2: "Strong",
            text3: "Short",
            item1: "2 parts\nWhite rum",
            item2: "3/4 parts\nSugar syrup",
            item3: "4 lime wedges\nClub soda\n ice",
          ),
        ],
      ),
    );
  }
}
