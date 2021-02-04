import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './utils.dart' as util;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  void show() async {
    Map data = await getweather(util.appId, util.defaultCity);
    print(data.toString());
  }

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
              onPressed: show,
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
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  // color: HexColor('#F6F7F3'),
                  backgroundColor: HexColor('#F4BB8A'),
                ),
              ),
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(0, 30, 20, 0),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/sun.png',
                height: 100,
                width: 100,
              ),
            ),
            Container(
              // alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(30, 300, 0, 0),
              child: updateTempWidget(util.defaultCity),
            )
          ],
        ),
      ),
    );
  }

  Future<Map> getweather(String appId, String city) async {
    String apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appId}&units=metric';
    http.Response response = await http.get(apiUrl);
    return json.decode(response.body);
  }

  Widget updateTempWidget(String city) {
    return FutureBuilder(
        future: getweather(util.appId, city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      content['main']['temp'].toString(),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      content['main']['temp'].toString(),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      content['main']['temp'].toString(),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else
            return Container(
              child: Text('Enter the correct city name.'),
            );
        });
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
// api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}& units=metric
