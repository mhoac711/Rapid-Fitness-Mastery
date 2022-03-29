import 'package:flutter/material.dart';

class NurtiHome extends StatefulWidget {
  const NurtiHome({Key? key}) : super(key: key);

  @override
  State<NurtiHome> createState() => _NurtiHomeState();
}

class _NurtiHomeState extends State<NurtiHome> {
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
                            'BULK',
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
                      EdgeInsets.only(left: 0, right: 30, bottom: 15, top: 40),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: Colors.tealAccent[100]),
                      child: IconButton(
                        alignment: Alignment.center,
                        icon: Container(
                          child: Text(
                            'WL',
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
              EdgeInsets.only(left: 20, right: 30, bottom: 15, top: 40),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: Colors.tealAccent[100]),
              child: SizedBox(
                height: 120,
                width: 400,
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Container(
                    child: Text(
                      'OVERALL',
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
            ),
          ],
        )
    );
  }
}
