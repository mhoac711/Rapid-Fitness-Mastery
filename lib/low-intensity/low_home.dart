import 'package:flutter/material.dart';

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
          Container(
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
                        'UPPER',
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
                      'LOWER',
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
              )
            ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LowAbs(),
                    ));
              },
            ),
          ),
        ],
      )
    );
  }
}
