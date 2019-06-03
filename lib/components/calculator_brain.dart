import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.weight, this.height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Abaixo do peso';
    } else if (_bmi < 25) {
      return 'Peso Normal';
    } else {
      return 'Acima do peso';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'Abaixo do peso, vc tem que comer mais!!';
    } else if (_bmi < 25) {
      return 'Peso Normal, muito bem, continue assim!';
    } else {
      return 'Acima do peso, vc tem que comer menos, e fazer mais exercicios!!';
    }
  }
}
