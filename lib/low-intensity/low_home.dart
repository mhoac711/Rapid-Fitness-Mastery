import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rapid_fitness_mastery/low-intensity/low_abs.dart';
import 'low_abs.dart';

class LowHome extends StatefulWidget {
  const LowHome({Key? key}) : super(key: key);

  @override
  State<LowHome> createState() => _LowHomeState();
}

class _LowHomeState extends State<LowHome> {
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
                        EdgeInsets.only(left: 90, bottom: 0, top: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.tealAccent,
                            width: 5
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
                              margin: EdgeInsets.only(top: 34, right: 30, left: 0),
                              width: 120,
                              child: Text(
                                'UPPER',
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
                    EdgeInsets.only(left: 190, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.blueAccent,
                            width: 5
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
                          margin: EdgeInsets.only(top: 34, right: 30, left: 0),
                          width: 120,
                          child: Text(
                            'ABS',
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
                            MaterialPageRoute(builder: (context) => LowAbs(),
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
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.tealAccent,
                            width: 5
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
                          margin: EdgeInsets.only(top: 35, right: 26, left: 0),
                          width: 120,
                          child: Text(
                            'LOWER',
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
