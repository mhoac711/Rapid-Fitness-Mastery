import 'package:flutter/material.dart';


class  HomeSamp extends StatefulWidget {

  @override
  _HomeSampState createState() => _HomeSampState();
}

class _HomeSampState extends State<HomeSamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color: Colors.tealAccent[100],
            height: 3.0,
          ),
          preferredSize: Size.fromHeight(3.0),
        ),
        backgroundColor: Colors.deepPurpleAccent[100],
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
            onPressed: (){

            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 40),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'ABS',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                       },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 40),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'CHEST',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'LEGS',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                       },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'ARMS',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(left: 20, right: 10, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.tealAccent[100]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'CARDIO',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                     },
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 10, right: 20, bottom: 15, top: 25),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: Colors.cyan[200]),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: Container(
                      child: Text(
                        'GLUTES',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'PermanentMarker',
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                    iconSize: 150,
                    onPressed: () {
                      },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}