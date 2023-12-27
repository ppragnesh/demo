import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo/Home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 170, 0),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Center content vertically
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Center content horizontally within the row
              children: [
                SizedBox(
                  width: 300.0,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('|| શ્રી સ્વામિનારાયણો વિજયતેતરામ્ ||',
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 100, 31, 10),
                            fontSize: 20,
                            backgroundColor: Color.fromARGB(255, 247, 170, 0),
                          )),
                      TyperAnimatedText('',
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                    onTap: () {
                      // print("I am executing");
                    },
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/GBSVStart.png',
                width: 250), // Centered directly using a single widget
            const Text("GBSV", textAlign: TextAlign.center), // Centered text
          ],
        ),
      ),
    );
  }
}
