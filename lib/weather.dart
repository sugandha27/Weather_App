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
          ),
          // backgroundColor: HexColor('#A5B9B9'),
          backgroundColor: HexColor('#393B63'),
        ),
        body: Container(
          // color: HexColor('#CABCB0'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () => {},
                  color: HexColor('#0F0D35'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: HexColor('#F6F7F3'),
                        fontSize: 24,
                        // color: HexColor('#0F0D35'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
