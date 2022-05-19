import 'package:ball_hw/style/text_style.dart';
import 'package:ball_hw/presentation/settings_screen/setting_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ball_hw/domain/provider/answer_provider.dart';
import 'package:ball_hw/domain/provider/app_theme_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnswerProvider _state = Provider.of<AnswerProvider>(context);
    AppThemeProvider _themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_themeProvider.theme.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SettingScreen();
                        },
                      ),
                    );
                  },
                  icon: Image.asset(
                    'assets/images/Vector.png',
                  ),
                ),
              ),
              Spacer(),
              Text(
                'ask_question',
                style: _themeProvider.theme.textStyle,
              ).tr(),
              Spacer(
                flex: 4,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/image 1.png'),
                  _state.image,
                  TextButton(
                    child: Text(
                      _state.element.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: _state.size,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nunito',
                      ),
                    ).tr(),
                    onPressed: () {
                      _state.changeAnswer();
                    },
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
