import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_1.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo_text2.png"),
              SizedBox(height: 50),

              Container(
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 40, color: Colors.orange),
                ),
                margin: EdgeInsets.fromLTRB(40, 10, 40, 30),
              ),
              //
              //
              //
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.yellow,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    border: InputBorder.none,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.yellow,
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.yellow,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(29),
                // me kellen thama sign in buttun eka ain raum kale
                //
                child: RaisedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.fromLTRB(70, 5, 70, 5),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page1()));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
