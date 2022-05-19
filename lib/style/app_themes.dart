import 'package:ball_hw/style/text_style.dart';
import 'package:ball_hw/data/models/app_theme.dart';

class AppThemes {
  static final List<AppThemeModel> themeList = [
    AppThemeModel(
      appTheme: AppTheme.standard,
      backgroundImage: 'assets/images/image.png',
      textStyle: AppTextStyle.fs25Regular400,
    ),
    AppThemeModel(
      appTheme: AppTheme.universe,
      backgroundImage: 'assets/images/image 27.png',
      textStyle: AppTextStyle.fs25Regular400,
    ),
    AppThemeModel(
      appTheme: AppTheme.watercolor,
      backgroundImage: 'assets/images/11 1.png',
      textStyle: AppTextStyle.fs25Comfortaa700,
    ),
    AppThemeModel(
      appTheme: AppTheme.comic,
      backgroundImage: 'assets/images/685 1.png',
      textStyle: AppTextStyle.fs25ComicNeue700,
    ),
    AppThemeModel(
      appTheme: AppTheme.mystic,
      backgroundImage: 'assets/images/423826-PE4KYC-325 1.png',
      textStyle: AppTextStyle.fs25Underdog700,
    ),
  ];
}
