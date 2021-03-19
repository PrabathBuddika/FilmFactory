import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/logo_text2.png"),
            //
            //
            //

            Image.asset("assets/thala.jpg"),
            //
            //
            Text(
              "Thaala is a 2019 Sri Lankan Sinhalese musical drama film directed by Paalitha Perera and produced by Nilan Weerasinghe for MEntertainment production as a Sirasa Movie. It stars Hemal Ranasinghe and Kalani Dodantenna in lead roles along with Jayalath Manoratne and Kaushalya Fernando. ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            //
            //
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              // me kellen thama sign in buttun eka ain raum kale
              child: RaisedButton(
                child: Text(
                  'Play',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),

                padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                //
                //
                onPressed: () {
                  _launchInBrowser(
                      'https://en.savefrom.net/18/#url=http://youtube.com/watch?v=n_ENdqrhuag&utm_source=youtube.com&utm_medium=short_domains&utm_campaign=www.ssyoutube.com&a_ts=1612707536.883');
                },
              ),
            ),
            //
            //
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              // me kellen thama sign in buttun eka ain raum kale
              //
              child: RaisedButton(
                child: Text(
                  'Download',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.fromLTRB(55, 5, 55, 5),
                onPressed: () {
                  _launchInBrowser('https://www.dailymotion.com/video/x7qw0nb');
                },
              ),
            ),
            //
            //
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              // me kellen thama sign in buttun eka ain raum kale
              //
              child: RaisedButton(
                child: Text(
                  'Subtitle',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.fromLTRB(70, 5, 70, 5),
                onPressed: () {
                  _launchInBrowser('https://www.dailymotion.com/video/x7qw0nb');
                },
              ),
            ),
            //
            //
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              // me kellen thama sign in buttun eka ain raum kale
              //
              child: RaisedButton(
                child: Text(
                  'More',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.fromLTRB(85, 5, 85, 5),
                onPressed: () {
                  _launchInBrowser('https://en.wikipedia.org/wiki/Husma');
                },
              ),
            ),
            //
            //
          ],
        ),
      ),
    );
  }
}
