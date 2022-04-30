import 'dart:ui';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/high-intensity/highabs/bicycle_crunch.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/burpees.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/hill_sprints.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/inchworm_crawl.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/plank_ski_hops.dart';
import 'package:rapid_fitness_mastery/high-intensity/highlower/running.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/high_crunches.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/mount_climb.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/plank.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowabs/reverse_crunch.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/crab_walk.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/glute_bridge.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/high_knees.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/jumping_jacks.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/reverse_lunge.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowlower/squat.dart';
import 'package:rapid_fitness_mastery/low-intensity/lowupper/push_up.dart';
import 'package:rapid_fitness_mastery/med-itensity/medabs/flutter_kicks.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/jumping_lunge.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/plank_jacks.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/squat_jump.dart';
import 'package:rapid_fitness_mastery/med-itensity/medupper/tricep_dip.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';




class WeightLossWorkout extends StatefulWidget {
  const WeightLossWorkout({Key? key}) : super(key: key);

  @override
  State<WeightLossWorkout> createState() => _WeightLossWorkoutState();
}


class _WeightLossWorkoutState extends State<WeightLossWorkout> {
  @override
  Widget build(BuildContext context) {
    Exercise hk = Exercise('High Knees', 'Alternate between bringing up one knee up to about your waist');
    Exercise sj = Exercise('Squat Jump', 'Keep your legs about shoulder width apart and repeatedly squat down, '
        'jump and return to squatting position');
    Exercise jl = Exercise('Jumping Lunge','Alternate between lunges on each side, but instead of '
        'stepping back on standing position jump and land in alternate lunge side.');
    Exercise rl = Exercise('Reverse Lunge', 'Alternate between extending one knee forward and '
        'while bringing the other downwards near the ground ');
    Exercise jj = Exercise('Jumping Jacks', 'Stand straight with legs by your side, simultaneously spreading your'
        'legs and raising your arms when jumping');
    Exercise mc = Exercise('Moutain Climbers',
        'Get into push up position and bring one knee to the opposite shoulder in alternating motions');
    Exercise pl = Exercise('Plank',
        'Get into push up position, but have with your elbows parallel to the mat, hold this position for 30 secs. Increase duration for greater workout');
    Exercise sq = Exercise('Squat', 'Bend your knees slightly about shoulder width apart and bend down');
    Exercise bc = Exercise('Bicycle Crunch','1.Lay back on the mat and have your arms bent resting behind your head.'
        '\n\n2. Raise both legs slightly above the floor and simultaneously bring in one'
        ' knee and try to touch it with the opposite side elbow');
    Exercise cw = Exercise('Crab Walk', '1. Hold your body up using both arms and leg'
        '\n\n2. Alternate between moving to the right and left and by shifting both arms and legs');
    Exercise pu = Exercise('Push-Up',
        'Get on all fours with arms about shoulder width apart, using your arms force your body down and push back up');
    Exercise fk = Exercise('Flutter Kicks', 'Lay your back on the mat and rest your butt on your hands and repeatedly slighly lift one leg at a'
        'time while alternating legs.');
    Exercise rc = Exercise('Reverse Crunch',
        'Lay on your back fully with your knees slightly bent. From here use your core to bring your legs upward, crunch, and return to laying position');
    Exercise hcr = Exercise('High Crunches',
        'Get into the same position as a simple curnch, but lay your arms parallel to the floor. Follow the same steps as a crunch, and you should feel a slight increase in difficulty');
    Exercise gb = Exercise('Glute Bridge',
        'Lay on the mat in sit up position, raise your butt so that your back is parallel'
            'with your legs');
    Exercise inc = Exercise('Inchworm Crawl','From a standing position, reach down to touch the ground and begin '
        'moving your arms forward one by one while keeping legs put. Once fully extended, return to original position'
        'by moving arms backwards in the same method');
    Exercise td = Exercise('Tricep Dips', '**This requires a bench or elevated platform**'
        '\n\n1. Rest your arms on an elevated platform, while holding your body up'
        '\n\n2. Dip your body downwards towards the floor and push back up');
    Exercise burp = Exercise('Burpees','1. Get into push up position'
        '\n\n 2. Do a push up and after going up bring both knees in to your chest'
        '\n\n 3. Jump up and raise your whole body!');
    Exercise pj = Exercise('Plank Jacks','Get into a plank position and repeatedly'
        'spread legs outward by jumping and jumping back to original position');
    Exercise run = Exercise('Running','This exercise can be done anywhere. To stay safe, make sure you are '
        'running within your limits and capabilities');
    Exercise psh = Exercise('Plank Ski Hops','Starting in a high plank position, lift your legs '
        'upwards and land on either the right or left side of the mat. Alternate between sides during each rep');
    Exercise hs = Exercise('Hill Sprints','This exercise can be done on a treadmill or outside. Basically'
        'sprint to get to the top of a hill and repeat several times ');


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
                        "Weight Loss: These are exercises mean to decrease the overall body weight. "
                            "Most are easily to do and require little equipment.  ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 18,
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
                            MaterialPageRoute(builder: (context) => ReverseLunge(e: rl,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        rl.title,
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
                            MaterialPageRoute(builder: (context) => JumpingJacks(e: jj,)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        jj.title,
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
                            MaterialPageRoute(builder: (context) => CrabWalk(e: cw,)));

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                      ),

                      child: Text(
                        cw.title,
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
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: 0, left: 0, bottom: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey[700],
            ),
            onPressed: (){
              globalWorkEx.add(hk);
              globalWorkEx.add(sj);
              globalWorkEx.add(jl);
              globalWorkEx.add(rl);
              globalWorkEx.add(jj);
              globalWorkEx.add(mc);
              globalWorkEx.add(pl);
              globalWorkEx.add(sq);
              globalWorkEx.add(bc);
              globalWorkEx.add(cw);
              globalWorkEx.add(pu);
              globalWorkEx.add(fk);
              globalWorkEx.add(rc);
              globalWorkEx.add(hcr);
              globalWorkEx.add(gb);

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