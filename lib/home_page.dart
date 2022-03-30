import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/high-intensity/high_home.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_home.dart';
import 'package:rapid_fitness_mastery/med-itensity/med_home.dart';
import 'nutrition/nutri_home.dart';
import 'Exercise.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color: Colors.tealAccent[100],
            height: 3.0,
          ),
          preferredSize: Size.fromHeight(3.0),
        ),
        backgroundColor: Colors.cyan[200],
        title: Text(
          'U F M',
          style: TextStyle(
            fontFamily: 'LobsterTwo',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.tealAccent[100],
          ),
        ),
        actions: [
          IconButton(

            icon: Icon(Icons.settings), onPressed: () {  },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 15, right: 0, bottom: 5, top: 00),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: SizedBox(
                    height: 475,
                    width: 110,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 80),
                        child: Text(
                          'L\nO\nW',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 45,
                            fontFamily: 'PermanentMarker',
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ),
                      
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LowHome(),
                            ));
                      },
                    ),
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 15, right: 0, bottom: 5, top: 50),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.cyan[200]),
                  child: SizedBox(
                    height:475,
                    width: 110,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          'M\nE\nD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 45,
                            fontFamily: 'PermanentMarker',
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MedHome(),
                            ));
                      },
                    ),
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 00),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: SizedBox(
                    height: 475,
                    width: 110,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 80),
                        child: Text(
                          'H\nI\nG\nH',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 45,
                            fontFamily: 'PermanentMarker',
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HighHome(),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.cyan[200]),
                  child: SizedBox(
                    width: 360,
                    height: 100,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        child: Text(
                          'NUTRITION',
                          style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'PermanentMarker',
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NurtiHome(),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    )
    );

  }
}