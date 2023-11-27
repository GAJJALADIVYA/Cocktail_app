import 'long_drink.dart';
import 'package:flutter/material.dart';
import 'gummiberrey.dart';
import 'spring.dart';
import 'hipster.dart';
import 'green_vitamin.dart';
import 'beach.dart';

class Home_List_Items extends StatefulWidget {
  final String img;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  const Home_List_Items(
      {super.key,
      required this.img,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5});

  @override
  State<Home_List_Items> createState() => _Home_List_ItemsState();
}

class _Home_List_ItemsState extends State<Home_List_Items> {
  int add = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 0.4),
            ),
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        height: 150,
                        width: 150,
                        child: Image.asset(widget.img),
                      ),
                    ),
                  ),
                  Text(
                    widget.text1,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.text2,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    widget.text3,
                    style: TextStyle(fontSize: 20, color: Colors.brown),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.text4,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    widget.text5,
                    style: TextStyle(fontSize: 20, color: Colors.brown),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "COST",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "150",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (add > 0) {
                        add--;
                      }
                    });
                  },
                  child: const Icon(Icons.remove_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$add",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      add++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
