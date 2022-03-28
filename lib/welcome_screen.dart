import 'package:flutter/material.dart';
import 'Exercise.dart';
import 'home_page.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override

  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.deepPurpleAccent,
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.tealAccent,
    ];
    const firstColorizeTextStyle = TextStyle(
      fontSize: 25.0,
      fontFamily: 'PermanentMarker',
      fontWeight: FontWeight.normal,
    );
    const secondColorizeTextStyle = TextStyle(
      fontSize: 40.0,
      fontFamily: 'PermanentMarker',
      fontWeight: FontWeight.normal,
    );
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 10, bottom: 15),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                color: Colors.lightBlue[900]),
            child: IconButton(
              alignment: Alignment.center,
              icon: Container(
                  child: Text(
                    'F/H',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'LobsterTwo',
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent[100],
                    ),
                  )
              ),
              iconSize: 135,
              onPressed: () {},
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 10, top: 5),

          ),
          RaisedButton(
              color: Colors.lightBlue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                "Start",
                style: TextStyle(
                    color: Colors.tealAccent[100],
                    fontSize: 16,
                    fontFamily: 'LobsterTwo'
                ),
              ),
              onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(

                      )));
                })

        ],
      ),
    );
  }
}
