import 'package:flutter/material.dart';
import 'package:mybar/bottom_bar.dart';
import 'package:mybar/explore.dart';
import 'package:mybar/home_list.dart';
import 'package:mybar/wish_list.dart';
import 'package:mybar/home.dart';
import 'list_items.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
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
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Cocktail Flow",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                Text(
                  "The Definitive Cocktail Encyclopaedia.",
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search Here For Your Cocktail",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Home_List(
                            image: "assets/images/img_3.png",
                            name: "LONGDRINK",
                            text: "Tall,dark&handsome"),
                        SizedBox(
                          height: 15,
                        ),
                        Home_List(
                            image: "assets/images/img_2.png",
                            name: "Gummi Bear's Favorite",
                            text: "Gummiberrey jice is made of\nmagic berries"),
                        SizedBox(
                          height: 15,
                        ),
                        Home_List(
                            image: "assets/images/img_4.png",
                            name: "Beach",
                            text: "Babes,Beef,Bonfires"),
                        SizedBox(
                          height: 15,
                        ),
                        Home_List(
                            image: "assets/images/img_5.png",
                            name: "Green Vitamin Bombs",
                            text: "If you can't eat 'em,drink 'em"),
                        SizedBox(
                          height: 15,
                        ),
                        Home_List(
                            image: "assets/images/img_6.png",
                            name: "Spring",
                            text: "Oh,that spring in your step"),
                        SizedBox(
                          height: 15,
                        ),
                        Home_List(
                            image: "assets/images/img_7.png",
                            name: "Hipster",
                            text: "I liked it before it was cool"),
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
