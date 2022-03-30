import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;

import '../../my-globals.dart';

class MountClimb extends StatelessWidget {
  final Exercise e;
  const MountClimb({Key? key, required this.e}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: const Offset(
                            10.0,
                            10.0,
                          ),
                        )
                      ],
                      border: Border.all(
                        width: 10,
                        color: Colors.indigo,
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
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 20,left: 25),
                    child: Text(
                      e.title,
                      style: TextStyle(
                        fontFamily: 'PermanentMarker',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
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
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 50,left: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                      ),
                      onPressed: (){
                        globalEx.add(e);
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
                                        'Exercise Saved',
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
          ),
        )
    );
  }
}