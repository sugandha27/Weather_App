import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangeCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: HexColor('#F4BB8A'),
      appBar: new AppBar(
        backgroundColor: HexColor('#393B63'),
        title: Text(
          'Search City',
          style: TextStyle(
            // color: HexColor('#F8F8F8'),
            color: HexColor('#F6F7F3'),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: new Stack(),
    );
  }
}
