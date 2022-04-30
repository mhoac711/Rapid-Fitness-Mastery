import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';

class Philosophy extends StatefulWidget {
  const Philosophy({Key? key}) : super(key: key);

  @override
  _PhilosophyState createState() => _PhilosophyState();
}

class _PhilosophyState extends State<Philosophy> {
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
              icon: Icon(
                  const IconData(0xeecc, fontFamily: 'MaterialIcons')),
              onPressed: () {
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
            Container(
              margin: EdgeInsets.only(top: 15, right: 25, left: 25, bottom: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo,
                    offset: const Offset(
                      8.0,
                      8.0,
                    ),
                  )
                ],
                border: Border.all(
                  color: Colors.tealAccent,
                  width: 10,
                ),
              ),
              child: SizedBox(
                width: 400,
                height: 400,
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[50],
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 10),
                          child: GlowText(
                            'Philosophy:',
                              glowColor: Colors.lightBlueAccent,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 3,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Colors.indigo,
                                color: Colors.blueGrey[800],
                                fontSize: 28,
                              ),
                            ),

                          ),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 10),

                          child: Text(
                            'Rapid Fitness Mastery is designed to provide users with'
                                'an incredibly easy way of finding and learning about '
                                'a variety of exercises that are categorized by experience '
                                'level and training area. Overall, Rapid Fitness Mastery hopes'
                                ' to alleviate some of the struggles that individuals may have '
                                'when trying to obtain a healthier lifestyle',
                            textAlign: TextAlign.center,
                            style: TextStyle(

                              color: Colors.blueGrey[800],
                              fontSize: 22,
                            ),
                          ),

                        ),
                      ],
                    ),
                  )

                ),

              ),

          ],
        )
    );
  }
}