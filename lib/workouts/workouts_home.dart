import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/med-itensity/medabs/med_abs.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/med_lower.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/med_upper.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';
import 'package:rapid_fitness_mastery/workouts/shred_workout.dart';
import 'package:rapid_fitness_mastery/workouts/weight_loss_workout.dart';

import 'bulk_workout.dart';

class WorkoutHome extends StatefulWidget {
  const WorkoutHome({Key? key}) : super(key: key);

  @override
  State<WorkoutHome> createState() => _WorkoutHomeState();
}

class _WorkoutHomeState extends State<WorkoutHome> {
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
              fontFamily: 'LobsterTwo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
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
            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 90, bottom: 0, top: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightBlueAccent,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            width: 120,
                            alignment: Alignment.center,
                            child: Text(
                              'BULK',
                              softWrap: false,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BulkWorkout()));

                        },
                      ),
                    ),
                  ),),
              ],
            ),

            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 190, bottom: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.blueAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            child: Text(
                              'WEIGHT\nLOSS',
                              softWrap: false,

                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WeightLossWorkout(),
                              ));
                        },
                      ),
                    ),
                  ),),
              ],
            ),

            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 110, bottom: 0, top: 70),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightBlueAccent,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            child: Text(
                              'SHRED',
                              softWrap: false,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ShredWorkout(),
                              ));
                        },
                      ),
                    ),
                  ),),
              ],
            ),

          ],
        )
    );
  }
}
