import 'package:flutter/material.dart';

class SpacePage extends StatefulWidget {
  @override
  _SpacePageState createState() => _SpacePageState();
}

class _SpacePageState extends State<SpacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.jpg")),
        ),
        //
        //
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "this page is not finished.please go Sinhala Section and select Thaala film.Please go back. thank you..",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
