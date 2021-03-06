import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:rapid_fitness_mastery/my-globals.dart';
import 'package:rapid_fitness_mastery/settings/saved_home_page.dart';
import '../Exercise.dart';
import '../my-globals.dart';

class SavedWorkoutEx extends StatelessWidget {
  const SavedWorkoutEx({Key? key}) : super(key: key);

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
                const IconData(0xeecc, fontFamily: 'MaterialIcons')
            ), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedHomePage(),
                ));
          },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: globalWorkEx.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
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
                          color: Colors.lightBlueAccent,
                          width: 10,
                        ),
                      ),
                      child: SizedBox(
                        width: 400,
                        height: 60,

                        child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.tealAccent[100],
                            ),
                            child: Text(
                              '${savedWorkList[index].title}',
                              style: TextStyle(
                                color: Colors.blueGrey[800],
                                fontSize: 25,
                              ),
                            )

                        ),

                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}




