import 'package:flutter/material.dart';
import 'package:mybar/explore.dart';
import 'package:mybar/home.dart';
import 'package:mybar/whiskey.dart';
import 'package:mybar/wish_list.dart';
import 'package:mybar/wine.dart';
import 'package:mybar/vodka.dart';
import 'rum.dart';
import 'gin.dart';
import 'beer.dart';
import 'list_items.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({super.key});

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
  int pageIndex = 0;
  final pages = [
    const MyHomePage(),
    const Explore(),
    const Wish_List(),
    const ExploreWine(),
    const Explore_Rum(),
    const Explore_Gin(),
    const ExploreVodka(),
    const Explore_Beer(),
    const Explore_wsiskey(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.transparent.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.wine_bar,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.wine_bar_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                        size: 30,
                      ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HOME",
                  style: TextStyle(
                      color: pageIndex == 0 ? Colors.white : Colors.grey),
                ),
                Text(
                  "EXPLORE",
                  style: TextStyle(
                      color: pageIndex == 1 ? Colors.white : Colors.grey),
                ),
                Text(
                  "Like",
                  style: TextStyle(
                      color: pageIndex == 2 ? Colors.white : Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
