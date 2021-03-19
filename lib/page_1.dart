import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_2.dart';
import 'package:flutter_application_1/spacepage.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),

        //
        //
        //
        //
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/logo_text2.png"),
            //
            //
            //
            Row(
              children: [
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/sinhala.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                  },
                ),
                SizedBox(width: 20),
                //
                Text(
                  "Sinhala",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "English",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/english.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SpacePage()));
                  },
                ),
              ],
            ),
            Row(
              children: [
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/hindi.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SpacePage()));
                  },
                ),
                SizedBox(width: 20),
                //
                Text(
                  "Hindi",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Tamil",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/tamil.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SpacePage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
