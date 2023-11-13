import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Bottom_Bar()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
              ),
            ),
            height: 500,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.cover)),
                  height: 150,
                  width: 150,
                ),
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              "MY",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              "COCKTAILS",
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
