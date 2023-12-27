import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo/Home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

//_animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _controller.reverse().then(
                  (value) => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                      (route) => false),
                );
          }
        },
      )
      ..addStatusListener(
        (status) => print('$status'),
      );

    _controller.forward();
    // Timer(
    //     Duration(seconds: 10),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 170, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Image.asset('assets/images/GBSVStart.png', width: 250),
            // ),
            FadeTransition(
              opacity: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/GBSVStart.png', width: 250),
                ],
              ),
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 100, 31, 10),
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('Welcome to GBSV'),
                    FadeAnimatedText('Welcome to GYSV'),
                    // FadeAnimatedText('do it RIGHT NOW!!!'),
                  ],
                  onTap: () {
                    //print("Tap Event");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
