import 'dart:ui';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/plank.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';
import 'crunches.dart';
import 'dead_bug.dart';
import 'high_crunches.dart';
import 'mount_climb.dart';
import 'reverse_crunch.dart';
import 'russian_twist.dart';
import 'sit_ups.dart';
class LowAbs extends StatefulWidget {
  const LowAbs({Key? key}) : super(key: key);

  @override
  State<LowAbs> createState() => _LowAbsState();
}


class _LowAbsState extends State<LowAbs> {
  @override
  Widget build(BuildContext context) {
    Exercise su = Exercise('Sit Ups',
        '1. Lay your back on the mat with knees pointing upwards \n\n2. Focus on using your core to pull yourself up and relax when going down');
    Exercise mc = Exercise('Mountain Climbers',
        'Get into push up position and bring one knee to the opposite shoulder in alternating motions');
    Exercise rt = Exercise('Russian Twist',
        'Get into sit up position and rotate your abs to the right or left side. You should try to focus on using your core to move directions. Use a dumbbell for stronger exercise');
    Exercise pl = Exercise('Plank',
        'Get into push up position, but have with your elbows parallel to the mat, hold this position for 30 secs. Increase duration for greater workout');
    Exercise db = Exercise('Dead Bug', '1. Lay on your back and raise your arms straight up while also raising your legs '
        'at a 90 degree angle'
        '\n\n 2. Alternate between lowering one arm towards the top of your head while simultaneously'
        'extending the opposite leg');
    Exercise rc = Exercise('Reverse Crunch',
        'Lay on your back fully with your knees slightly bent. From here use your core to bring your legs upward, crunch, and return to laying position');
    Exercise cr = Exercise('Crunches',
        'These are basically smaller sit ups, so lay on your back with knees facing upward, and use your core to pull your body slightly upwards');
    Exercise hcr = Exercise('High Crunches',
        'Get into the same position as a simple curnch, but lay your arms parallel to the floor. Follow the same steps as a crunch, and you should feel a slight increase in difficulty');
    List<Exercise> lowAbEx = [];
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
                                MaterialPageRoute(builder: (context) => SitUps(e: su,)));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            su.title,
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
                                MaterialPageRoute(builder: (context) => MountClimb(e: mc,)));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            mc.title,
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
                                MaterialPageRoute(builder: (context) => RussianTwists(e: rt,)));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            rt.title,
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
                                MaterialPageRoute(builder: (context) => Plank(e: pl,)));

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            pl.title,
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
                                MaterialPageRoute(builder: (context) => DeadBug(e: db,)));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            db.title,
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
                                MaterialPageRoute(builder: (context) => ReverseCrunch(e: rc,)));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            rc.title,
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
                                MaterialPageRoute(builder: (context) => Crunches(e: cr,)));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[100],
                          ),

                          child: Text(
                            cr.title,
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
                                  MaterialPageRoute(builder: (context) => HighCrunches(e: hcr,)));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.tealAccent[100],
                            ),

                            child: Text(
                              hcr.title,
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