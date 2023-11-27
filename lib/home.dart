import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybar/bottom_bar.dart';
import 'package:mybar/explore.dart';
import 'package:mybar/home_list.dart';
import 'package:mybar/long_drink.dart';
import 'package:mybar/services.dart';
import 'package:mybar/wish_list.dart';
import 'package:mybar/home.dart';
import 'list_items.dart';
import 'package:mybar/search_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'splashscreen.dart';
import 'gummiberrey.dart';
import 'beach.dart';
import 'hipster.dart';
import 'spring.dart';
import 'green_vitamin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SearchModel searchModel = SearchModel();
  String buttonText = "search";
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(220),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.7,
                  image: AssetImage("assets/images/3.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Cockatil Flow",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      'The Definitive Cocktail Encyclopaedia.',
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                SearchBar(
                  controller: searchController,
                ),
                MaterialButton(
                  color: Colors.amberAccent,
                  onPressed: () async {
                    print("dkvfjbksdvjb ${searchController.text}");
                    searchModel = SearchModel();
                    searchModel = await ApiBaseHelper()
                        .getSearchResponse(searchController.text);
                    setState(() {
                      buttonText = searchModel.drinks![5].strDrink!;
                    });
                  },
                  child: Text(buttonText),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Long_drink(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_3.png",
                              name: "Long Drinks",
                              text: "Tall, dark and handsome."),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Gummiberrey(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_2.png",
                              name: "Gummi Bear's Favorite",
                              text:
                                  "Gummiberrey jice is made of\nmagic berries"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Beach(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_4.png",
                              name: "Beach",
                              text: "Babes,Beef,Bonfires"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Green_Vitamin(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_5.png",
                              name: "Green Vitamin Bombs",
                              text: "If you can't eat 'em,drink 'em"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Spring(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_6.png",
                              name: "Spring",
                              text: "Oh,that spring in your step"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Hipster(),
                              ),
                            );
                          },
                          child: Home_List(
                              image: "assets/images/img_7.png",
                              name: "Hipster",
                              text: "I liked it before it was cool"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
