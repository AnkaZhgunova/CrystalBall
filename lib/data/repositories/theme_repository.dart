import 'package:ball_hw/data/models/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ball_hw/style/app_themes.dart';

class ThemeRepository {
  Future<int> saveTheme(AppTheme theme) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('theme', theme.name);
    return AppThemes.themeList
        .indexWhere((element) => element.appTheme == theme);
  }

  Future<int> getTheme() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final String? theme = sharedPreferences.getString('theme');

    if (theme == null) {
      await saveTheme(AppTheme.standard);
      return 0;
    } else {
      return AppThemes.themeList
          .indexWhere((element) => element.appTheme == theme.getThemeName);
    }
  }
}

extension GetTheme on String {
  AppTheme get getThemeName {
    switch (this) {
      case 'mystic':
        {
          return AppTheme.mystic;
        }
      case 'comic':
        {
          return AppTheme.comic;
        }
      case 'watercolor':
        {
          return AppTheme.watercolor;
        }
      case 'universe':
        {
          return AppTheme.universe;
        }
      default:
        {
          return AppTheme.standard;
        }
    }
  }
}
