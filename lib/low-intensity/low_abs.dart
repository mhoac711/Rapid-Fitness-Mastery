import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
class LowAbs extends StatefulWidget{
  const LowAbs({Key? key}) : super(key: key);

  @override
  State<LowAbs> createState() => _LowAbsState();
}
Exercise sitUp = Exercise("Sit Ups", "Lay back on the mat with knees bent and use your core to bring yourself up and down"),
Exercise mountClimb = Exercise("Mountain Climbers", "Get into push up position, bring knees to opposite shoulder in repeating motion"),

List<Exercise> lowAbEx = [];
class _LowAbsState extends State<LowAbs> {
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
            'F / H',
            style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.tealAccent[100],
            ),
          ),
          actions: [
            IconButton(

              icon: Icon(Icons.settings), onPressed: () {  },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "Russian Twist"
                  ),
                ),



              ],
            )
          )
        )


    );
  }
}
