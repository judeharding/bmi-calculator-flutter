import 'package:flutter/material.dart';
import 'dart:math';

//IMPORTING MY WIDGETS

class CalculatorBrain {
  final int height;
  final int weight;
//  final int age;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calaculateBMI() {
//    _bmi = weight / pow(height / 100, 2); METRIC
    _bmi = (703 * weight) / (height * height); // IMPERIAL
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Cut Out Carbs';
    } else if (_bmi > 18) {
      return 'Good Job';
    } else {
      return 'Eat a donut';
    }
  }
}
