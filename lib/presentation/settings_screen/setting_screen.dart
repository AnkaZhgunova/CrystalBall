import 'package:ball_hw/domain/provider/app_theme_provider.dart';
import 'package:ball_hw/style/text_style.dart';
import 'package:ball_hw/presentation/settings_screen/language_setting_screen/language.dart';
import 'package:ball_hw/presentation/settings_screen/theme_setting_screen/theme.dart';
import 'package:ball_hw/presentation/settings_screen/widgets/settings_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppThemeProvider state = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: kTextColor,
                ),
              ),
              Text(
                'back',
                style: AppTextStyle.fs18Regular400,
              ).tr(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 24,
              right: 190,
              bottom: 20,
            ),
            child: Text(
              'settings',
              style: AppTextStyle.fs25Regular400,
            ).tr(),
          ),
          SettingsContainer(
            info: 'change_language',
            setting: context.locale.countryCode,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
            ),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LanguageScreen();
                  },
                ),
              );
            },
          ),
          SettingsContainer(
            info: 'change_theme',
            setting: state.theme.nameTheme,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
            ),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ThemeScreen();
                  },
                ),
              );
            },
          ),
          SettingsContainer(
            info: 'estimate',
            setting: null,
            icon: null,
          ),
          SettingsContainer(
            info: 'version',
            setting: '1.0',
            icon: null,
          ),
        ],
      ),
    );
  }
}
