import 'package:ball_hw/constants.dart';
import 'package:ball_hw/screens/settings/language.dart';
import 'package:ball_hw/screens/settings/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                style: Style.fs18Regular400,
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
              style: Style.fs25Regular400,
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
            setting: 'standard',
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

class SettingsContainer extends StatelessWidget {
  final String info;
  final String? setting;
  final Icon? icon;
  final VoidCallback? onPress;

  SettingsContainer({
    Key? key,
    this.setting,
    required this.info,
    this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF36383A),
        ),
      ),
      child: Row(
        children: [
          Text(
            info,
            style: Style.fs20Regular400,
          ).tr(),
          Spacer(),
          Text(
            setting ?? "",
            style: Style.fs18Regular400,
          ).tr(),
          IconButton(
            onPressed: onPress,
            icon: icon ?? SizedBox(),
          ),
        ],
      ),
    );
  }
}
