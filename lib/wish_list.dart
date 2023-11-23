import 'package:flutter/material.dart';
import 'package:mybar/explore.dart';
import 'list_items.dart';

class Wish_List extends StatefulWidget {
  const Wish_List({super.key});

  @override
  State<Wish_List> createState() => _Wish_ListState();
}

class _Wish_ListState extends State<Wish_List> {
  int add = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIKES"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                setState(() {
                  add = 0;
                });
              },
              child: const Text("RESET"),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                print(add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add +
                    add);
              },
              child: const Text("OK"),
            ),
          ],
        ),
      ),
    );
  }
}
