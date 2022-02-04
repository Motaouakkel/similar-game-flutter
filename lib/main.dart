import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: Icon(Icons.games),
        title: Text('Game'),
        backgroundColor: Colors.indigo[800],
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeImage() {
    LImageNumber = Random().nextInt(9) + 1;
    RImageNumber = Random().nextInt(9) + 1;
  }

  int LImageNumber = 1, RImageNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LImageNumber == RImageNumber ? 'Good' : 'Try again !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 42.0,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeImage();
                      });
                    },
                    child: Image.asset('images/image-$LImageNumber.png'))),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeImage();
                      });
                    },
                    child: Image.asset('images/image-$RImageNumber.png')))
          ],
        )
      ],
    );
  }
}
