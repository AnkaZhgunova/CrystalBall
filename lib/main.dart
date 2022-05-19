import 'package:ball_hw/core/injector/injector.dart';
import 'package:ball_hw/domain/provider/app_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'domain/provider/answer_provider.dart';
import 'presentation/main_screen/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Injector().init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('en', 'US'),
        Locale('uk', 'UA'),
      ],
      fallbackLocale: Locale('ru', 'RU'),
      saveLocale: true,
      path: 'assets/localization',
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AnswerProvider>.value(value: AnswerProvider()),
        ChangeNotifierProvider<AppThemeProvider>.value(
            value: GetIt.I.get<AppThemeProvider>()..getTheme()),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MainScreen(),
      ),
    );
  }
}
