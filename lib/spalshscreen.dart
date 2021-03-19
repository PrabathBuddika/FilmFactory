import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class HomeSplashScreen extends StatefulWidget {
  @override
  _HomeSplashScreenState createState() => _HomeSplashScreenState();
}

class _HomeSplashScreenState extends State<HomeSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    var container = Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage('assets/background.jpg'))),
      //     //
      //

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/logo2.png',
              height: 250,
            ),
            //SizedBox(height:50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '  ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Welcome to Film Factory ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: container,
    );
  }
}
