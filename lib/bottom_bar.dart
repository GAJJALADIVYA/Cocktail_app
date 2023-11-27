import 'package:flutter/material.dart';
import 'package:mybar/explore.dart';
import 'package:mybar/home.dart';
import 'package:mybar/wine.dart';
import 'package:mybar/wish_list.dart';
import 'list_items.dart';
import 'long_drink.dart';
import 'gummiberrey.dart';
import 'beach.dart';
import 'green_vitamin.dart';
import 'spring.dart';
import 'hipster.dart';
import 'whiskey.dart';
import 'rum.dart';
import 'gin.dart';
import 'beer.dart';

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
    const Wine(),
    const Long_drink(),
    const Green_Vitamin(),
    const Gummiberrey(),
    const Spring(),
    const Hipster(),
    const Beach(),
    const Rum(),
    const Gin(),
    const Beach(),
    const Beer(),
    const Whiskey(),
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
