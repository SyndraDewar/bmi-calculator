import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {

  int weight;
  int height;
  double _bmi;

  CalculatorBrain({@required this.weight, @required this.height});

  String calculateBMI () {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
}

  String getResult () {
    if (_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation (){
    if (_bmi >= 25){
      return 'You seem to have gained some extra baggage. You should cut down on the takeout';
    } else if (_bmi > 18.5) {
      return 'Your weight is on point. Great job!';
    } else {
      return 'You\re a little underfed. Treat yourself more!';
    }
  }

}
