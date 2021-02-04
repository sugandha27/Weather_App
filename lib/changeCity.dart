import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangeCity extends StatelessWidget {
  var _cityFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: HexColor('#F4BB8A'),
      appBar: new AppBar(
        backgroundColor: HexColor('#393B63'),
        title: Text(
          'Search City',
          style: TextStyle(
            color: HexColor('#F6F7F3'),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
      ),
      body: new ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: new ListTile(
              tileColor: HexColor('#F6F7F3'),
              title: new TextField(
                keyboardType: TextInputType.text,
                controller: _cityFieldController,
                decoration: new InputDecoration(
                  hintText: "Enter City",
                  isDense: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
            child: new ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(
                        context, {'enter': _cityFieldController.text});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: new Text(
                      "Get Weather",
                      style: TextStyle(
                        color: HexColor('#F6F7F3'),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  color: HexColor('#0F0D35'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
