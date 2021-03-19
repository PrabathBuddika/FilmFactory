import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_3.dart';
import 'package:flutter_application_1/page_4.dart';
import 'package:flutter_application_1/page_5.dart';
import 'package:flutter_application_1/page_6.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                      "assets/thala.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page3()));
                  },
                ),
                SizedBox(width: 20),
                //
                Text(
                  "Thaala",
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
                  "Husma",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/husma.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page4()));
                  },
                ),
              ],
            ),
            Row(
              children: [
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/udumbara.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                ),
                SizedBox(width: 10),
                //
                Text(
                  "Udumbara",
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
                  "Tikira",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: Container(
                    child: Image.asset(
                      "assets/tikira.jpg",
                      fit: BoxFit.cover,
                      width: 200,
                      height: 100,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page6()));
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
