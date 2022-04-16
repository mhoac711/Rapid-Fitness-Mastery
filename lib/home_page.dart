import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/high-intensity/high_home.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_home.dart';
import 'package:rapid_fitness_mastery/med-itensity/med_home.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';
import 'package:rapid_fitness_mastery/workouts/workouts_home.dart';
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
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          'U F M',
          style: TextStyle(
            fontFamily: 'Viga',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.tealAccent[100],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedHomePage(),
                ));
          },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 10,
                ),
              ),
              child: SizedBox(
                width: 340,
                height: 60,

                child: Container(
                  alignment: Alignment.center,
                  color: Colors.tealAccent[100],
                  child: Text(
                    "INTENSITY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Economica',
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[800],
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12, right: 10, left: 23, bottom: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo,
                          offset: const Offset(
                            -8.0,
                            8.0,
                          ),
                        )
                      ],
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 10,
                      ),
                    ),
                    child: SizedBox(
                      width: 85,
                      height: 420,

                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LowHome()));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top:100),
                            child: Text(
                              "L\nO\nW",
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color: Colors.blueGrey[800],
                                fontSize: 35,
                              ),
                            ),
                          )

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 12,left: 5, top: 35),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo,
                          offset: const Offset(
                            6.0,
                            8.0,
                          )),
                      BoxShadow(
                        color: Colors.indigo,
                        offset: const Offset(
                          -6.0,
                          8.0,
                        ),
                        )
                      ],
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 10,
                      ),
                    ),
                    child: SizedBox(
                      width: 85,
                      height: 420,

                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HighHome()));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            "H\nI\nG\nH",
                            textAlign: TextAlign.center,
                            style: TextStyle(

                              color: Colors.blueGrey[800],
                              fontSize: 35,
                            ),
                          )

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18, left: 3, top: 0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo,
                          offset: const Offset(
                            8.0,
                            8.0,
                          ),
                        )
                      ],
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 10,
                      ),
                    ),
                    child: SizedBox(
                      width: 85,
                      height: 420,

                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MedHome()));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top:100),
                            child: Text(
                              "M\nE\nD",
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color: Colors.blueGrey[800],
                                fontSize: 35,
                              ),
                            ),
                          )

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 5, top:20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 10,
                ),
              ),
              child: SizedBox(
                width: 340,
                height: 60,

                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WorkoutHome()));

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      "WORKOUTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Economica",
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[800],
                        fontSize: 45,
                      ),
                    )

                ),
              ),
            ),

        ],
    ),
      )
    );

  }
}