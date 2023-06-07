import 'dart:math';

class CalculatorBrain {
  int? height;
  int? weight;
  double? _bmi = 0;

  CalculatorBrain({this.height, this.weight});

  String bmi() {
    _bmi = weight!.toDouble() / pow(height! * 0.3048, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat a bit more!';
    }
  }
}
