import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'Exercise.dart';
import 'home_page.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.blueGrey[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
                  child: GlowText(
                    'R\nF\nM',
                    glowColor: Colors.lightBlueAccent[100],
                    blurRadius: 15,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent[100],
                    ),
                  )
              ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey[400],
                ),
                child: GlowText(
                  "LET'S GO",
                  glowColor: Colors.lightBlueAccent[100],
                  blurRadius: 5,
                  style: TextStyle(
                      color: Colors.tealAccent[100],
                      fontSize: 16,
                  ),
                ),
                onPressed: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage(

                        )));
                  }),
          )

        ],
      ),
    );
  }
}
