import 'dart:ui';
import 'package:rapid_fitness_mastery/high-intensity/highabs/bicycle_crunch.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/burpees.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/overhead_squat.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/crunches.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/reverse_crunch.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/glute_bridge.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/high_knees.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/squat.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/arm_circle.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/bicep_curl.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/dumbell_over_press.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/inc_dumbbell_press.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/push_up.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/res_band_flye.dart';
import 'package:rapid_fitness_mastery/med-itensity/medabs/flutter_kicks.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/dead_lift.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/donkey_kick.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/dumbbell_walk_lunge.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/plank_jacks.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/bench_press.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/chin_up.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/dumbbell_flye.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/tricep_dip.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import '../low-intensity/lowabs/mount_climb.dart';



class BulkWorkout extends StatefulWidget {
  const BulkWorkout({Key? key}) : super(key: key);

  @override
  State<BulkWorkout> createState() => _BulkWorkoutState();
}


class _BulkWorkoutState extends State<BulkWorkout> {
  @override
  Widget build(BuildContext context) {
    Exercise bp = Exercise('Bench Press', '**This exercise requires a bench and barbell**'
        '\n\nEnsure your hold on the barbell is secure and lift the barbell up and down');
    Exercise idp = Exercise('Inclined Dumbbell Press', '**This exercise requires a bench and dumbbells**'
        '\n\n1.Using a bench, sit in a slightly leaning back position\n\n 2.Hold each dumbbell'
        'above your shoulders and extend arms forward and release slowly');
    Exercise pu = Exercise('Push-Up',
        'Get on all fours with arms about shoulder width apart, using your arms force your body down and push back up');
    Exercise dop = Exercise('Dumbbell Overhead Press', '**This exercise requires a set of dumbbells** '
        '\n\n1.Hold a single dumbbell in each arm and hold them above your shoulders'
        '\n\n 2. Extends your arms upwards and release slowly '
        '\n**Can either be done sitting or standing' );
    Exercise fk = Exercise('Flutter Kicks', 'Lay your back on the mat and rest your butt on your hands and repeatedly slighly lift one leg at a'
        'time while alternating legs.');
    Exercise cu = Exercise('Chin-Up', '**This exercise requires a pull up bar**'
        '\n\nGrab the pull up bar with your palms facing yourself, pull yourself up '
        'to the point where your chin is above the bar.');
    Exercise bc = Exercise('Bicep Curl',
        '**This exercise requires dumbbells** \n\n1.Hold a single dumbbell is each hand'
            '\n\n 2.Bring dumbbell forward/ upwards towards your shoulder and release slowly');
    Exercise sq = Exercise('Squat', 'Bend your knees slightly about shoulder width apart and bend down');
    Exercise dl = Exercise('Dead Lift', '**This exercise requires a barbell**'
        '\n\n Arch your back slightly so that you can easily grab the barbell from the ground.'
        'Grab the barbell with both hands and straighten your back and release.');
    Exercise dwl = Exercise('Dumbbell Walking Lunge', '**This exercise requires a set of dumbbells'
        '\n\n Holding a dumbbell in each hand step forward and bend one knee while keeping'
        'the other leg straight. Alternate between sides');
    Exercise gb = Exercise('Glute Bridge',
        'Lay on the mat in sit up position, raise your butt so that your back is parallel'
            'with your legs');
    Exercise rbf = Exercise('Resistance Band Flye', '**This exercise requires a resistance band**'
        '\n\n1.In a standing position, hold the resistance band with both feet'
        '\n\n2. Grab one end of the resistance band and bring it upwards near shoulder height and release slowly  ');
    Exercise df = Exercise('Dumbbell Flye', '**This exercise requires a bench and dumbbells**'
        '\n\nLay your back on the bench while holding the dumbbells, keep your arms bent and bring arms back');
    Exercise td = Exercise('Tricep Dips', '**This requires a bench or elevated platform**'
        '\n\n1. Rest your arms on an elevated platform, while holding your body up'
        '\n\n2. Dip your body downwards towards the floor and push back up');
    Exercise os = Exercise('Overhead Squat','**This exercise requires a barbell**'
        '\n\nHold the barbell above your head and squat down. The easiest way to set this up '
        'is to use a squat rack. ');


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
                        "Bulking: This includes an increase in caloric intake "
                            "and intense amount of weight training to build muscle.",
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
                            MaterialPageRoute(builder: (context) => BenchPress(e: bp,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        bp.title,
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
                            MaterialPageRoute(builder: (context) => IncDumbbellPress(e: idp,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        idp.title,
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
                            MaterialPageRoute(builder: (context) => PushUp(e: pu,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        pu.title,
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
                            MaterialPageRoute(builder: (context) => DumbbellOverPress(e: dop,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        dop.title,
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
                            MaterialPageRoute(builder: (context) => ChinUp(e: cu,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        cu.title,
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
                            MaterialPageRoute(builder: (context) => BicepCurl(e: bc,)));
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
                            MaterialPageRoute(builder: (context) => Squat(e: sq,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        sq.title,
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
                            MaterialPageRoute(builder: (context) => GluteBridge(e: gb,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        gb.title,
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
                            MaterialPageRoute(builder: (context) => ResBandFlye(e: rbf,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        rbf.title,
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
                            MaterialPageRoute(builder: (context) => DumbbellFlye(e: df,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        df.title,
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
                            MaterialPageRoute(builder: (context) => TricepDip(e: td,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        td.title,
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
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 0, left: 0, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                  onPressed: (){
                    globalWorkEx.add(bp);
                    globalWorkEx.add(idp);
                    globalWorkEx.add(pu);
                    globalWorkEx.add(dop);
                    globalWorkEx.add(fk);
                    globalWorkEx.add(cu);
                    globalWorkEx.add(bc);
                    globalWorkEx.add(sq);
                    globalWorkEx.add(dl);
                    globalWorkEx.add(dwl);
                    globalWorkEx.add(gb);
                    globalWorkEx.add(rbf);
                    globalWorkEx.add(df);
                    globalWorkEx.add(td);
                    globalWorkEx.add(os);

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