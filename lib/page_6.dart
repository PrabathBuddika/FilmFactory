import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
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

            Image.asset("assets/tikira.jpg"),
            //
            //
            Text(
              "Film No: 385-_Released Date: 1978-08-04__Colorimeter: Black & White__Video Format: 35 mm__Category_drama",
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
                      'https://www.youtube.com/watch?v=bBXhcIX53OU&t=1s');
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
                  _launchInBrowser(
                      'https://www.ssyoutube.com/watch?v=bBXhcIX53OU&t=1s');
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
                  _launchInBrowser(
                      'https://www.youtube.com/watch?v=bBXhcIX53OU');
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
                  _launchInBrowser(
                      'https://en.wikipedia.org/wiki/Cinema_of_Sri_Lanka');
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
