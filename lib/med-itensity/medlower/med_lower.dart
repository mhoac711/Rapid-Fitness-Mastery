import 'dart:ui';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/single_leg_glute_bridge.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/sled_push.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/squat_jump.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/wall_sit.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import 'alt_toe_touch.dart';
import 'box_jump.dart';
import 'bulgarian_split_squat.dart';
import 'dead_lift.dart';
import 'donkey_kick.dart';
import 'dumbbell_walk_lunge.dart';
import 'jumping_lunge.dart';
import 'plank_jacks.dart';

class MedLower extends StatefulWidget {
  const MedLower({Key? key}) : super(key: key);

  @override
  State<MedLower> createState() => _MedLowerState();
}


class _MedLowerState extends State<MedLower> {
  @override
  Widget build(BuildContext context) {
    Exercise sj = Exercise('Squat Jump', 'Keep your legs about shoulder width apart and repeatedly squat down, '
        'jump and return to squatting position');
    Exercise dl = Exercise('Dead Lift', '**This exercise requires a barbell**'
        '\n\n Arch your back slightly so that you can easily grab the barbell from the ground.'
        'Grab the barbell with both hands and straighten your back and release.');
    Exercise dwl = Exercise('Dumbbell Walking Lunge', '**This exercise requires a set of dumbbells'
        '\n\n Holding a dumbbell in each hand step forward and bend one knee while keeping'
        'the other leg straight. Alternate between sides');
    Exercise sp = Exercise('Sled Push', '**This exercise requires equipment**'
        '\n\n Place desired amount of weight on sled and simply push a certain distance');
    Exercise slgb = Exercise('Single Leg Glute Bridge', 'Starting in a sit up position,'
        'lift one leg up while keeping the thighs parallel and push your waist upwards'
        'Alternate between sides');
    Exercise bj = Exercise('Box Jump', '**This exercise requires a solid and sturdy box**'
        '\n\nPlace desired height box with plentiful landing space in safe area and jump on top');
    Exercise ws = Exercise('Wall Sit', 'Go beside a wall and imagine sitting in a chair, try holding'
        'in 30 secs increments');
    Exercise bss = Exercise('Bulgarian Split Squat', '**This exercise is best with a bench**'
        '\n\n While in front of the bench, rest one foot on the bench and squat down.'
        'Alternate sides after finishing set');
    Exercise dk = Exercise('Donkey Kick', 'Get into quadruped position and alternate between lifting your legs'
        'upwards while keeping knees bent');
    Exercise att = Exercise('Alternating Toe Touch','Lay fully back on the mat and try'
        'touching opposing arm to raised leg. Alternate between sides per rep');
    Exercise jl = Exercise('Jumping Lunge','Alternate between lunges on each side, but instead of '
        'stepping back on standing position jump and land in alternate lunge side.');
    Exercise pj = Exercise('Plank Jacks','Get into a plank position and repeatedly'
        'spread legs outward by jumping and jumping back to original position');


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
                            MaterialPageRoute(builder: (context) => SquatJump(e: sj,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        sj.title,
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
                            MaterialPageRoute(builder: (context) => DeadLift(e: dl,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        dl.title,
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
                            MaterialPageRoute(builder: (context) => DumbbellWalkLunge(e: dwl,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        dwl.title,
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
                            MaterialPageRoute(builder: (context) => SledPush(e: sp,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        sp.title,
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
                            MaterialPageRoute(builder: (context) => SingleLegGluteBridge(e: slgb,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        slgb.title,
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
                            MaterialPageRoute(builder: (context) => BoxJump(e: bj,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        bj.title,
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
                          MaterialPageRoute(builder: (context) => WallSit(e: ws,)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      ws.title,
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
                            MaterialPageRoute(builder: (context) => BulgSplitSquat(e: bss,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        bss.title,
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
                          MaterialPageRoute(builder: (context) => AltToeTouch(e: att,)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      att.title,
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
                          MaterialPageRoute(builder: (context) => JumpingLunge(e: jl,)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      jl.title,
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
                    ),

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