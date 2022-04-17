import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum LanguageApp { russian, english, ukrainian }
enum ThemeApp { theme1, theme2, theme3, theme4, theme5 }

class AnswerProvider extends ChangeNotifier {

  double size = 30;
  var element = tr('start');
  List<String> answer = [
    'yes',
    'no',
    'foggy',
    'prospects_not_very_good',
  ];
  final _random = Random();
  Image image = Image.asset('assets/images/iside_circle.png');


  void changeAnswer() {
    element = answer[_random.nextInt(answer.length)];
    image = Image.asset('assets/images/image 2.png');
    size = 20;
    notifyListeners();
  }

  LanguageApp _language = LanguageApp.russian;

  LanguageApp get languageButton => _language;

  void changeLanguageButton(LanguageApp? value){
    _language = value!;
    notifyListeners();
  }

  ThemeApp _theme = ThemeApp.theme1;

  ThemeApp get themeButton => _theme;

  void changeButtonTheme(ThemeApp? value){
    _theme = value!;
    notifyListeners();
  }

}