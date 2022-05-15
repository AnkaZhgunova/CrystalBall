import 'dart:math';
import 'package:ball_hw/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppTheme { standard, universe, watercolor, comic, mystic }

class AnswerProvider extends ChangeNotifier {
  double size = 30;
  static List<String> answer = [
    'yes',
    'no',
    'foggy',
    'prospects_not_very_good',
    'start'
  ];
  String element = answer.last;

  final _random = Random();
  Image image = Image.asset('assets/images/iside_circle.png');

  void changeAnswer() {
    element = answer[_random.nextInt(answer.length - 1)];
    image = Image.asset('assets/images/image 2.png');
    size = 20;
    notifyListeners();
  }

 String _backgroundImage = 'assets/images/image.png';
  TextStyle _textStyle = Style.fs25Regular400;
  AppTheme _appTheme = AppTheme.standard;

  final String key = "theme";
  late SharedPreferences sharedPreferences;

  String get backgroundImage => _backgroundImage;
  TextStyle get textStyle => _textStyle;
  AppTheme get appTheme => _appTheme;

  void changeTheme(AppTheme theme) {
    switch (theme) {
      case AppTheme.standard:
        _backgroundImage = 'assets/images/image.png';
        _textStyle = Style.fs25Regular400;
        break;
      case AppTheme.universe:
        _backgroundImage = 'assets/images/image 27.png';
        _textStyle = Style.fs25Regular400;
        break;
      case AppTheme.watercolor:
        _backgroundImage = 'assets/images/11 1.png';
        _textStyle = Style.fs25Comfortaa700;
        break;
      case AppTheme.comic:
        _backgroundImage = 'assets/images/685 1.png';
        _textStyle = Style.fs25ComicNeue700;
        break;
      case AppTheme.mystic:
        _backgroundImage = 'assets/images/423826-PE4KYC-325 1.png';
        _textStyle = Style.fs25Underdog700;
        break;
    }
    _appTheme = theme;
    notifyListeners();
  }




}
