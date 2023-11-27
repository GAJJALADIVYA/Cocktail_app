import 'package:flutter/material.dart';
import 'home.dart';
import 'bottom_bar.dart';
import 'explore.dart';
import 'long_drink.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool selected = false;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Bottom_Bar()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.white,
                      blurRadius: 8,
                      spreadRadius: 4,
                    ),
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 50),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('MY',
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ],
                isRepeatingAnimation: true,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('COCKTAIL',
                      textStyle: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ],
                isRepeatingAnimation: true,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
