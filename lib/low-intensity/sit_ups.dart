import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;

import '../my-globals.dart';

class SitUps extends StatelessWidget {
  final Exercise e;
  const SitUps({Key? key, required this.e}) : super(key: key);

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

              icon: Icon(Icons.settings), onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 35, left: 15, right: 15),
                  child: Image.asset(
                    'assets/images/i.jpg',
                    height: 250,
                    width: 350,
                    scale: 50,
                    fit: BoxFit.fill,
                  ),
                ),
    Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 15,left: 0),
    child: Text(
    e.title,
    style: TextStyle(
    fontFamily: 'PermanentMarker',
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.blueAccent,
    ),
    ),
    ),
    Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(top: 10,left: 25),
    child: Text(
    e.description,
    style: TextStyle(
    fontFamily: 'PermanentMarker',
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.blueAccent,
    ),
    ),
    ),
    Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(top: 10,left: 25),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlueAccent,
      ),
      onPressed: (){
        globalEx.add(e);

      },
      child: Text(
        "Save"
      ),


    ),
    ),

              //   ListView.builder(
              //     itemCount: e.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //           height: 20,
              //           margin: EdgeInsets.all(2),
              //           child: Center(
              //               child: Column(
              //                 children: [
              //                   Text(
              //                     '${e[index].title}',
              //                     style: TextStyle(fontSize: 12),
              //                   ),
              //                   Text(
              //                     '${e[index].description}',
              //                     style: TextStyle(fontSize: 12),
              //                   )
              //                 ],
              //               )
              //
              //           )
              //       );
              //     },
              //   ),
              ],




        )
    )
    );
  }
}
