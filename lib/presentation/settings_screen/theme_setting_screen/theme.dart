import 'package:ball_hw/domain/provider/app_theme_provider.dart';
import 'package:ball_hw/style/text_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ball_hw/data/models/app_theme.dart';
import 'package:ball_hw/presentation/settings_screen/widgets/theme_container.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppThemeProvider _state = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: Icon(
                Icons.close_outlined,
                color: Color(0xFFDFEDFF),
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 24,
              right: 190,
              bottom: 20,
            ),
            child: Text(
              'change_theme',
              style: AppTextStyle.fs25Regular400,
            ).tr(),
          ),
          ThemeContainer(
            currentValue: _state.theme.appTheme,
            value: AppTheme.standard,
            image: 'assets/images/image.png',
            textTheme: 'standard',
            onChanged: (AppTheme theme) {
              _state.changeTheme(theme);
            },
          ),
          ThemeContainer(
            currentValue: _state.theme.appTheme,
            value: AppTheme.universe,
            image: 'assets/images/image 27.png',
            textTheme: 'universe',
            onChanged: (AppTheme theme) {
              _state.changeTheme(theme);
            },
          ),
          ThemeContainer(
            currentValue: _state.theme.appTheme,
            value: AppTheme.watercolor,
            image: 'assets/images/11 1.png',
            textTheme: 'water_color',
            onChanged: (AppTheme theme) {
              _state.changeTheme(theme);
            },
          ),
          ThemeContainer(
            currentValue: _state.theme.appTheme,
            value: AppTheme.comic,
            image: 'assets/images/685 1.png',
            textTheme: 'comic',
            onChanged: (AppTheme theme) {
              _state.changeTheme(theme);
            },
          ),
          ThemeContainer(
            currentValue: _state.theme.appTheme,
            value: AppTheme.mystic,
            image: 'assets/images/423826-PE4KYC-325 1.png',
            textTheme: 'mystic',
            onChanged: (AppTheme theme) {
              _state.changeTheme(theme);
            },
          ),
        ],
      ),
    );
  }
}
