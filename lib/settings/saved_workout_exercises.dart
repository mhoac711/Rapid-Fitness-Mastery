import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/my-globals.dart';
import '../Exercise.dart';
import '../my-globals.dart';

class SavedWorkoutEx extends StatelessWidget {
  const SavedWorkoutEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: globalWorkEx.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 20,
                  margin: EdgeInsets.all(2),
                  child: Center(
                      child: Text(
                        '${savedWorkList[index].title}',
                        style: TextStyle(fontSize: 12),
                      )
                  )
              );
            }
        ));
  }
}
