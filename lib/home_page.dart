import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/high-intensity/high_home.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_home.dart';
import 'package:rapid_fitness_mastery/med-itensity/med_home.dart';
import 'Exercise.dart';
import 'workouts/workouts_home.dart';

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
            margin: EdgeInsets.only(left: 15, right: 15, top:18),
            child: Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.cyan[200]),
                  child: SizedBox(
                    width: 360,
                    height: 60,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        child: Text(
                          '* * * INTENSITY * * *',
                          style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'PermanentMarker',
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[900],
                          ),
                        ),
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right:18, left: 15),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: SizedBox(
                    height: 455,
                    width: 105,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 100),
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
                  margin: EdgeInsets.only(right: 18,left: 1, top: 40),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.cyan[200]),
                  child: SizedBox(
                    height:450,
                    width: 110,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 25),
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
                Container(
                  margin: EdgeInsets.only(right: 18, left: 1),
                 decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: SizedBox(
                    height: 455,
                    width: 105,
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 100),
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
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15),
            child: Container(
               decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  color: Colors.cyan[200]),
              child: SizedBox(
                width: 360,
                height: 60,
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Container(
                    child: Text(
                      '* * WORKOUTS * *',
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
                        MaterialPageRoute(builder: (context) => WorkoutHome(),
                        ));
                  },
                ),
              ),
            ),
          ),
      ],
    )
    );

  }
}