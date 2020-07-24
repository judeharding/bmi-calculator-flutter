import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('hello'),
          RaisedButton(
            color: Colors.pink,
            child: Text('Go To Screen 1'),
            onPressed: () {
              //Navigate to Screen 1
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
