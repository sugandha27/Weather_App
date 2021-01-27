import 'package:flutter/material.dart';
import './weather.dart';

void main() => runApp(Show());

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Weather(),
    );
  }
}
