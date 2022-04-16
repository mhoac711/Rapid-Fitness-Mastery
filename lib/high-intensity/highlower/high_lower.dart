import 'dart:ui';
import 'package:rapid_fitness_mastery/high-intensity/highlower/pistol_squat.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/plank_ski_hops.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/running.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import 'burpees.dart';
import 'elevator_squat.dart';
import 'hang_clean.dart';
import 'hill_sprints.dart';
import 'inchworm_crawl.dart';
import 'overhead_squat.dart';



class HighLower extends StatefulWidget {
  const HighLower({Key? key}) : super(key: key);

  @override
  State<HighLower> createState() => _HighLowerState();
}


class _HighLowerState extends State<HighLower> {
  @override
  Widget build(BuildContext context) {
    Exercise os = Exercise('Overhead Squat','**This exercise requires a barbell**'
        '\n\nHold the barbell above your head and squat down. The easiest way to set this up '
        'is to use a squat rack. ');
    Exercise hc = Exercise('Hang Clean','**This exercise requires a barbell**'
        '\n\n While arching your back, hold the barbell at about knee height and swing the '
        'barbell upwards while bending your elbows to secure it. At the same time, you should be '
        'doing a squat');
    Exercise evs = Exercise('Elevator Squat','Get into a standard squat position. While doing this '
        'squat, instead of going all the way down, go down in small intervals and hold for a few secs');
    Exercise psq = Exercise('Pistol Squat','From a standing position, extend one leg out and '
        'squat down. This is an incredibly hard exercise that requires a lot of balance');
    Exercise hs = Exercise('Hill Sprints','This exercise can be done on a treadmill or outside. Basically'
        'sprint to get to the top of a hill and repeat several times ');
    Exercise psh = Exercise('Plank Ski Hops','Starting in a high plank position, lift your legs '
        'upwards and land on either the right or left side of the mat. Alternate between sides during each rep');
    Exercise burp = Exercise('Burpees','1. Get into push up position'
        '\n\n 2. Do a push up and after going up bring both knees in to your chest'
        '\n\n 3. Jump up and raise your whole body!');
    Exercise inc = Exercise('Inchworm Crawl','From a standing position, reach down to touch the ground and begin '
        'moving your arms forward one by one while keeping legs put. Once fully extended, return to original position'
        'by moving arms backwards in the same method');
    Exercise run = Exercise('Running','This exercise can be done anywhere. To stay safe, make sure you are '
        'running within your limits and capabilities');
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
                            MaterialPageRoute(builder: (context) => OverheadSquat(e: os,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        os.title,
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
                            MaterialPageRoute(builder: (context) => HangClean(e: hc,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        hc.title,
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
                            MaterialPageRoute(builder: (context) => ElevatorSquat(e: evs,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        evs.title,
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
                            MaterialPageRoute(builder: (context) => PistolSquat(e: psq,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        psq.title,
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
                            MaterialPageRoute(builder: (context) => HillSprints(e: hs,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        hs.title,
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
                            MaterialPageRoute(builder: (context) => PlankSkiHops(e: psh,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        psh.title,
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
                          MaterialPageRoute(builder: (context) => Burpees(e: burp,)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      burp.title,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 25,
                      ),
                    ),

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
                            MaterialPageRoute(builder: (context) => InchwormCrawl(e: inc,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        inc.title,
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
                            MaterialPageRoute(builder: (context) => Running(e: run,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        run.title,
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