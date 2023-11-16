import 'package:flutter/material.dart';
import 'package:mybar/list_items.dart';

class ExploreVodka extends StatelessWidget {
  const ExploreVodka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage("assets/images/img_9.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.zero,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "VODKA",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                "This spirit looks good in any glass,\nin anylighting and at any time of\nthe day.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
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
              img: "assets/images/img_21.png",
              tittle: 'AMF',
              text1: 'VODKA',
              text2: "Classic",
              text3: "Light",
              item1: "1/2 parts\nvodka",
              item2: "1/2 parts\nWhite rum",
              item3: "1/2 parts\ntequila\n ice",
            ),
            List_Items(
              img: "assets/images/img_29.png",
              tittle: 'Bloody\nScrewdriver',
              text1: 'VODKA',
              text2: "Longdrink",
              text3: "Strong",
              item1: "2 parts\nVodka",
              item2: "1 parts\nOrange Juice",
              item3: "1 dash\nGrenadine\n ice",
            ),
          ],
        ),
      ),
    );
  }
}
