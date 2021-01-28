import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: HexColor('#CABCB0'),
        backgroundColor: HexColor('#F4BB8A'),
        appBar: AppBar(
          title: Text(
            'Get the Weather',
            style: TextStyle(
              // color: HexColor('#F8F8F8'),
              color: HexColor('#F6F7F3'),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          centerTitle: false,
          // backgroundColor: HexColor('#A5B9B9'),
          backgroundColor: HexColor('#393B63'),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/sunny.jpg',
                height: 900,
                width: 490,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                'Spain',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: HexColor('#F6F7F3'),
                ),
              ),
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(0, 20, 25, 0),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/sun.png',
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle tempStyle() {
  return TextStyle(
    color: HexColor('#F6F7F3'),
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
    fontSize: 32,
  );
}
