import 'dart:ui';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/high-intensity/highabs/bicycle_crunch.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/burpees.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/crunches.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/reverse_crunch.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/high_knees.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/arm_circle.dart';
import 'package:rapid_fitness_mastery/med-itensity/medabs/flutter_kicks.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/donkey_kick.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/plank_jacks.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import '../low-intensity/lowabs/mount_climb.dart';



class ShredWorkout extends StatefulWidget {
  const ShredWorkout({Key? key}) : super(key: key);

  @override
  State<ShredWorkout> createState() => _ShredWorkoutState();
}


class _ShredWorkoutState extends State<ShredWorkout> {
  @override
  Widget build(BuildContext context) {
    Exercise mc = Exercise('Moutain Climbers',
        'Get into push up position and bring one knee to the opposite shoulder in alternating motions');
    Exercise jj = Exercise('Jumping Jacks', 'Stand straight with legs by your side, simultaneously spreading your'
        'legs and raising your arms when jumping');
    Exercise dk = Exercise('Donkey Kick', 'Get into quadruped position and alternate between lifting your legs'
        'upwards while keeping knees bent');
    Exercise pj = Exercise('Plank Jacks','Get into a plank position and repeatedly'
        'spread legs outward by jumping and jumping back to original position');
    Exercise bc = Exercise('Bicycle Crunch','1.Lay back on the mat and have your arms bent resting behind your head.'
        '\n\n2. Raise both legs slightly above the floor and simultaneously bring in one'
        ' knee and try to touch it with the opposite side elbow');
    Exercise cr = Exercise('Crunches',
        'These are basically smaller sit ups, so lay on your back with knees facing upward, and use your core to pull your body slightly upwards');
    Exercise fk = Exercise('Flutter Kicks', 'Lay your back on the mat and rest your butt on your hands and repeatedly slighly lift one leg at a'
        'time while alternating legs.');
    Exercise rc = Exercise('Reverse Crunch',
        'Lay on your back fully with your knees slightly bent. From here use your core to bring your legs upward, crunch, and return to laying position');
    Exercise ac = Exercise('Arm circles', 'Extend your arms to the side and '
        'imagine drawing a circle with both arms\n\n **Try making bigger circles or faster roatations'
        'for greater workout**');
    Exercise hk = Exercise('High Knees', 'Alternate between bringing up one knee up to about your waist');
    Exercise burp = Exercise('Burpees','1. Get into push up position'
        '\n\n 2. Do a push up and after going up bring both knees in to your chest'
        '\n\n 3. Jump up and raise your whole body!');


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
          'U F M',
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
                        },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        "Shredding: These are exercises designed to lose body fat, in order to make "
                            "muscles look more defined and toned.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 20,
                        ),
                      )

                  ),
                ),
              ),
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
                            MaterialPageRoute(builder: (context) => DonkeyKick(e: dk,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        dk.title,
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
                            MaterialPageRoute(builder: (context) => PlankJacks(e: pj,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        pj.title,
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
                            MaterialPageRoute(builder: (context) => BicycleCrunch(e: bc,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        bc.title,
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
                            MaterialPageRoute(builder: (context) => FlutterKicks(e: fk,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        fk.title,
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
                            MaterialPageRoute(builder: (context) => ArmCircle(e: ac,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        ac.title,
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
                            MaterialPageRoute(builder: (context) => HighKnees(e: hk,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        hk.title,
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
                      )

                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 0, left: 0, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey[700],
                  ),
                  onPressed: (){
                    globalWorkEx.add(mc);
                    globalWorkEx.add(jj);
                    globalWorkEx.add(dk);
                    globalWorkEx.add(pj);
                    globalWorkEx.add(bc);
                    globalWorkEx.add(cr);
                    globalWorkEx.add(fk);
                    globalWorkEx.add(rc);
                    globalWorkEx.add(ac);
                    globalWorkEx.add(hk);
                    globalWorkEx.add(burp);

                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                            content: SizedBox(
                              height: 30,
                              width:  100,
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.only(top:7),
                                  child: Text(
                                    'Workout Saved',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            actions: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: OutlinedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        )
                                    ),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(
                                        color: Colors.blue[900],
                                      ),

                                    ),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                              )
                            ]

                        )
                    );

                  },
                  child: Text(
                      "Save All"
                  ),
                ),),

            ],
          ),
        ),


      ),
    );
  }
}