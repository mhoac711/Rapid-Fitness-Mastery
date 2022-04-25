import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/Exercise.dart';
import 'package:rapid_fitness_mastery/my-globals.dart' as globals;
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import '../../my-globals.dart';

class DumbbellWalkLunge extends StatelessWidget {
  final Exercise e;
  const DumbbellWalkLunge({Key? key, required this.e}) : super(key: key);

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
                      'assets/images/dumbWalkLunge.gif',
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10,left: 25, right:15),
                    child: Text(
                      e.description,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 30,left: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[700],
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
