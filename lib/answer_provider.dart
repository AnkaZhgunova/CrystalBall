import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum AppTheme {standard, universe, watercolor, comic, mystic}
class AnswerProvider extends ChangeNotifier {
  double size = 30;
  var element = 'start';
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

  String _backgroundImage = 'assets/images/image.png';
  AppTheme _appTheme = AppTheme.standard;

  String get backgroundImage => _backgroundImage;
  AppTheme get appTheme => _appTheme;

  void changeTheme(AppTheme theme){
    switch(theme){
      case AppTheme.standard:
        _backgroundImage = 'assets/images/image.png';
        break;
      case AppTheme.universe:
        _backgroundImage = 'assets/images/image 27.png';
        break;
      case AppTheme.watercolor:
        _backgroundImage = 'assets/images/11 1.png';
        break;
      case AppTheme.comic:
        _backgroundImage = 'assets/images/685 1.png';
        break;
      case AppTheme.mystic:
        _backgroundImage = 'assets/images/423826-PE4KYC-325 1.png';
        break;
    }
    _appTheme = theme;
  notifyListeners();
  }
}
