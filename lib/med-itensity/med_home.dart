import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'medabs/med_abs.dart';
import 'medupper/med_upper.dart';

class MedHome extends StatefulWidget {
  const MedHome({Key? key}) : super(key: key);

  @override
  State<MedHome> createState() => _MedHomeState();
}

class _MedHomeState extends State<MedHome> {
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
            'U F M',
            style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(

              icon: Icon(Icons.settings), onPressed: () {  },
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
                                fontFamily: 'PermanentMarker',
                                fontWeight: FontWeight.normal,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MedUpper()));

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
                                fontFamily: 'PermanentMarker',
                                fontWeight: FontWeight.normal,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MedAbs(),
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
                                fontFamily: 'PermanentMarker',
                                fontWeight: FontWeight.normal,
                                color: Colors.lightBlue[900],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
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
