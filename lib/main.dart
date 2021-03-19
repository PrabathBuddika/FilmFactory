import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/spalshscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeSplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/background.jpg")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo2.png",
              fit: BoxFit.cover,
            ),
            //
            //
            Container(
              margin: EdgeInsets.fromLTRB(40, 70, 40, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                // me kellen thama sign in buttun eka ain raum kale

                child: RaisedButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.fromLTRB(70, 5, 70, 5),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),
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
                  'Register',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.fromLTRB(65, 5, 60, 5),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
