import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_english/GameScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => GameScreen(),
          )),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset(
                'assets/images/DiceLogo.png',
                scale: 2,
              ),
            ),
            Text(
              'F L U E N T E N S E',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Myfont', fontSize: 26),
            ),
            Text(
              ' IMPROVE YOUR ENGLISH PRACTICE',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Myfont', fontSize: 12),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'D E V E L O P E D  B Y',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Myfont',
                color: Colors.brown[200],
              ),
            ),
            Text(
              'A N U R A G  S H A R M A',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Myfont',
                color: Colors.brown[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
