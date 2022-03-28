import 'package:flutter/material.dart';

import '../Exercise.dart';

class saved extends StatelessWidget {
  final List<Exercise> strArr;
  const saved({Key? key, required this.strArr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: strArr.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 20,
              margin: EdgeInsets.all(2),
              child: Center(
                  child: Text(
                    '${strArr[index].title}',
                    style: TextStyle(fontSize: 12),
                  )
              )
          );
        }
    ));
  }
}
