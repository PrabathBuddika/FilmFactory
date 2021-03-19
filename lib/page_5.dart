import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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

            Image.asset("assets/udumbara.jpg"),
            //
            //
            Text(
              "Udumbara (Sinhala: උදුම්බරා) is a 2018 Sri Lankan Sinhalese sports drama film directed by K.S Chammanthraj and produced by MTV Channel as a Sirasa Movie. It stars Jackson Anthony Harshi Rasanga and a newcomer Nadeeshani in lead roles along with Sarath Kothalawala and Janaka Kumbukage. ",
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
                      'https://www.youtube.com/watch?v=s4D5YSan3UE');
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
                      'https://www.ssyoutube.com/watch?v=s4D5YSan3UE');
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
                      'https://sinhalamovies.info/udumbara-sinhala-full-movie-watch-online/');
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
                      'https://en.wikipedia.org/wiki/Udumbara_(film)');
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
