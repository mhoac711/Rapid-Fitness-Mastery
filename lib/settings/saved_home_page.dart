import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/high-intensity/high_home.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_home.dart';
import 'package:rapid_fitness_mastery/med-itensity/med_home.dart';
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
              icon: Icon(Icons.settings), onPressed: () {
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
                        'Saved Exercises',
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
                          MaterialPageRoute(builder: (context) => SavedExercises(),
                          ));
                    },
                  ),
                ),
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
                        'Saved Workouts',
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
                          MaterialPageRoute(builder: (context) => SavedWorkoutEx(),
                          ));
                    },
                  ),
                ),
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
                        'Philosophy',
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