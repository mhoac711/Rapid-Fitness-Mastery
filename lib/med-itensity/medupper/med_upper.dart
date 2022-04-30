import 'dart:ui';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/yoga_push_up.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import 'bench_press.dart';
import 'chin_up.dart';
import 'db_push_up.dart';
import 'dumbbell_flye.dart';
import 'lateral_raise.dart';
import 'tricep_dip.dart';
import 'zottman_curl.dart';

class MedUpper extends StatefulWidget {
  const MedUpper({Key? key}) : super(key: key);

  @override
  State<MedUpper> createState() => _MedUpperState();
}


class _MedUpperState extends State<MedUpper> {
  @override
  Widget build(BuildContext context) {
    Exercise zc = Exercise('Zottman Curl', '**This exercise requires dumbbells**'
        '\n\nHold a set of dumbbells by your side, while lifting upwards curl the dumbbells'
        'inward, before bringing the dumbbells down rotate outwards');
    Exercise cu = Exercise('Chin-Up', '**This exercise requires a pull up bar**'
        '\n\nGrab the pull up bar with your palms facing yourself, pull yourself up '
        'to the point where your chin is above the bar.');
    Exercise td = Exercise('Tricep Dips', '**This requires a bench or elevated platform**'
        '\n\n1. Rest your arms on an elevated platform, while holding your body up'
        '\n\n2. Dip your body downwards towards the floor and push back up');
    Exercise latr = Exercise('Lateral Raise', 'Keep your arms by your side and raise them to about shoulder length'
        '\n\n **This exercise is best done with dumbbells**');
    Exercise bp = Exercise('Bench Press', '**This exercise requires a bench and barbell**'
        '\n\nEnsure your hold on the barbell is secure and lift the barbell up and down');
    Exercise ypu = Exercise('Yoga Ball Push-up', '**This exercise requires a yoga ball**'
        '\n\n Rest your feet on the yoga ball while holding the position with your arms, then do a push up.');
    Exercise df = Exercise('Dumbbell Flye', '**This exercise requires a bench and dumbbells**'
        '\n\nLay your back on the bench while holding the dumbbells, keep your arms bent and bring arms back');
    Exercise dbpu = Exercise('Dive Bomber Push-up', '1. Start in a push up position'
        '\n\n2. While going up, keep your legs down'
        '\n\n3. Once arms are back up, raise lower body all the way up');
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
            icon: Icon(const IconData(0xeecc, fontFamily: 'MaterialIcons')), onPressed: () {
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
                            MaterialPageRoute(builder: (context) => ZottmanCurl(e: zc,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        zc.title,
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
                            MaterialPageRoute(builder: (context) => LateralRaise(e: latr,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        latr.title,
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
                          MaterialPageRoute(builder: (context) => YogaPushUp(e: ypu,)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent[100],
                    ),

                    child: Text(
                      ypu.title,
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
                            MaterialPageRoute(builder: (context) => DiveBombPushUp(e: dbpu,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        dbpu.title,
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