import 'package:flutter/material.dart';

enum AppTheme {
  standard,
  universe,
  watercolor,
  comic,
  mystic,
}

class AppThemeModel {
  final AppTheme appTheme;
  final String backgroundImage;
  final TextStyle textStyle;

  AppThemeModel({
    required this.appTheme,
    required this.backgroundImage,
    required this.textStyle,
  });
}
