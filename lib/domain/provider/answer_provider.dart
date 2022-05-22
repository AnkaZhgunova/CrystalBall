import 'dart:math';
import 'package:flutter/material.dart';

class AnswerProvider extends ChangeNotifier {
  final _random = Random();

  double size = 30;
  static List<String> answer = [
    'yes',
    'no',
    'foggy',
    'prospects_not_very_good',
    'start'
  ];
  String element = answer.last;
  Image image = Image.asset('assets/images/iside_circle.png');

  void changeAnswer() {
    element = answer[_random.nextInt(answer.length - 1)];
    image = Image.asset('assets/images/image 2.png');
    size = 20;
    notifyListeners();
  }

  void resetAnswer() {
    element = answer.last;
    image = Image.asset('assets/images/iside_circle.png');
    size = 30;
    notifyListeners();
  }
}
