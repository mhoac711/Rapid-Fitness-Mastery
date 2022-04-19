import 'dart:ui';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import 'barbell_front_raise.dart';
import 'push_up_clap.dart';
import 'single_dumbbell_press.dart';
import 'tri_push_up.dart';
import 'weighted_dip.dart';



class HighUpper extends StatefulWidget {
  const HighUpper({Key? key}) : super(key: key);

  @override
  State<HighUpper> createState() => _HighUpperState();
}


class _HighUpperState extends State<HighUpper> {
  @override
  Widget build(BuildContext context) {
    Exercise tpu = Exercise('Triangle Push-Up','Get into push-up position but use your hands'
        'to form a base in the form of a triangle. This type of push-up is significantly'
        'more difficult than others. ');
    Exercise bfr = Exercise('Barbell Front Raise','**This exercise requires a barbell**'
        '\n\n Holding the barbell with both hands, palm facing downwards, pull the weight upwards'
        'to about shoulder height');
    Exercise sdp = Exercise('Single Dumbbell Press','**This exercise requires a dumbbell**'
        '\n\n Hold the dumbbell above your shoulder and raise it until fully extending arm');
    Exercise wd = Exercise('Weighted Dip','**This exercise requires weight and a dip machine**'
        '\n\n 1. Use a dip machine or somewhere you can raise your body above the floor with both hands'
        '\n\n 2. Dip down by bending elbows'
        '\n\n **This exercise can vary in difficulty by attaching weight via a belt');
    Exercise puc = Exercise('Push-Up Clap','Get into push-up position and do a regular push-up,'
        'but when going up push your body upwards so that you have a short time period to clap '
        'your hands before returning to original position');

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
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.tealAccent[100],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(IconData(0xeecc, fontFamily: 'MaterialIcons')), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedHomePage(),
                ));
          },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, right: 25, left: 25, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 10,
                  ),
                ),
                child: SizedBox(
                  width: 400,
                  height: 100,

                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TriPushUp(e: tpu,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        tpu.title,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      )

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 10,
                  ),
                ),
                child: SizedBox(
                  width: 400,
                  height: 100,

                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BarbellFrontRaise(e: bfr,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        bfr.title,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      )

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 10,
                  ),
                ),
                child: SizedBox(
                  width: 400,
                  height: 100,

                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SingleDumbbellPress(e: sdp,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        sdp.title,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      )

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 10,
                  ),
                ),
                child: SizedBox(
                  width: 400,
                  height: 100,

                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WeightedDip(e: wd,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        wd.title,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      )

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                    width: 10,
                  ),
                ),
                child: SizedBox(
                  width: 400,
                  height: 100,


                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PushUpClap(e: puc,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        puc.title,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      )

                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}