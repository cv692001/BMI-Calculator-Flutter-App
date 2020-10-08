import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int weight;
  final int height;
  double _bmi;

  String CalculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher body weight than noraml . Try to excercise more :)';
    } else if (_bmi >= 18.5) {
      return 'You  aa normal body weight . Good Job !!';
    } else {
      return 'You have less than a normal bodyweight . Try to eat a bit more :)';
    }
  }
}
