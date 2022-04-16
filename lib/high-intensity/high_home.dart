import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/med-itensity/medlower/med_lower.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

import 'highabs/high_abs.dart';
import 'highlower/high_lower.dart';
import 'highupper/high_upper.dart';


class HighHome extends StatefulWidget {
  const HighHome({Key? key}) : super(key: key);

  @override
  State<HighHome> createState() => _HighHomeState();
}

class _HighHomeState extends State<HighHome> {
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
          title: Text(
            'U F M',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
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
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 90, bottom: 0, top: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightBlueAccent,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            width: 120,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'UPPER',
                              softWrap: false,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HighUpper()));

                        },
                      ),
                    ),
                  ),),
              ],
            ),

            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 190, bottom: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.blueAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            child: Text(
                              'ABS',
                              softWrap: false,

                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HighAbs(),
                              ));
                        },
                      ),
                    ),
                  ),),
              ],
            ),

            Row(
              children: [
                Container(
                  child:
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.topLeft,
                      margin:
                      EdgeInsets.only(left: 110, bottom: 0, top: 70),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightBlueAccent,
                              offset: const Offset(
                                20.0,
                                20.0,
                              ),
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 15
                          )),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        child: Transform.rotate(
                          angle: 150,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: 120,
                            child: Text(
                              'LOWER',
                              softWrap: false,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HighLower(),
                              ));
                        },
                      ),
                    ),
                  ),),
              ],
            ),
          ],
        )
    );
  }
}
