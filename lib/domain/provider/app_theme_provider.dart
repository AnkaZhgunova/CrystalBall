import 'package:flutter/material.dart';

import 'package:ball_hw/data/models/app_theme.dart';
import 'package:ball_hw/data/repositories/theme_repository.dart';
import 'package:ball_hw/style/app_themes.dart';

class AppThemeProvider extends ChangeNotifier {
  final ThemeRepository _themeRepository;
  AppThemeModel _theme = AppThemes.themeList.first;

  AppThemeProvider(this._themeRepository);

  AppThemeModel get theme => _theme;

  Future<void> getTheme() async {
    int index = await _themeRepository.getTheme();
    _theme = AppThemes.themeList[index];
    notifyListeners();
  }

  Future<void> changeTheme(AppTheme theme) async {
    _themeRepository.saveTheme(theme);
    await getTheme();
    notifyListeners();
  }
}
