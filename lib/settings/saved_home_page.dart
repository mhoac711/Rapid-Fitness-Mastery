import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/high-intensity/high_home.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_home.dart';
import 'package:rapid_fitness_mastery/med-itensity/med_home.dart';
import 'package:rapid_fitness_mastery/settings/philosophy.dart';
import 'package:rapid_fitness_mastery/settings/saved_exercises.dart';
import 'package:rapid_fitness_mastery/settings/saved_workout_exercises.dart';
import 'package:rapid_fitness_mastery/workouts/workouts_home.dart';

import '../my-globals.dart';
import 'saved_exercises.dart';


class SavedHomePage extends StatefulWidget {

  @override
  _SavedHomePageState createState() => _SavedHomePageState();
}

class _SavedHomePageState extends State<SavedHomePage> {
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
          title: GlowText(
            'R F M',
            glowColor: Colors.lightBlueAccent[100],
            style: TextStyle(
              fontFamily: 'Viga',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.tealAccent[100],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                  IconData(0xeecc, fontFamily: 'MaterialIcons')
              ), onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavedHomePage(),
                  ));
            },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 10,left: 5, top:20),
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
                  width: 340,
                  height: 60,

                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SavedExercises()));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        "Saved Exercises",
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
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 5, top:20),
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
                width: 340,
                height: 60,

                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SavedWorkoutEx()));

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      "Saved Workouts",
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
            Container(
              margin: EdgeInsets.only(right: 10,left: 5, top:20),
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
                width: 340,
                height: 60,

                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Philosophy()));

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      "Philosophy",
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
        )
    );

  }
}