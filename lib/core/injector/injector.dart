import 'package:ball_hw/data/repositories/theme_repository.dart';
import 'package:ball_hw/domain/provider/app_theme_provider.dart';
import 'package:get_it/get_it.dart';

class Injector {
  final GetIt _getit = GetIt.instance;

  void init() {
    _getit.registerLazySingleton<ThemeRepository>(() => ThemeRepository());
    _getit.registerFactory<AppThemeProvider>(
        () => AppThemeProvider(_getit.get()));
  }
}
