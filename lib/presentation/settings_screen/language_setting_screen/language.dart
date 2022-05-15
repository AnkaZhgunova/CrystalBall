import 'package:flutter/material.dart';
import '../../../style/text_style.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widgets/language_container.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                color: kTextColor,
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
              'change_language',
              style: Style.fs20Regular400,
            ).tr(),
          ),
          LanguageContainer(
            title: 'Русский',
            selected: context.locale.languageCode == 'ru',
            onChanged: (_) {
              context.setLocale(Locale('ru', 'RU'));
            },
          ),
          LanguageContainer(
            title: 'English',
            selected: context.locale.languageCode == 'en',
            onChanged: (_) {
              context.setLocale(Locale('en', 'US'));
            },
          ),
          LanguageContainer(
            title: 'Українська',
            selected: context.locale.languageCode == 'uk',
            onChanged: (_) {
              context.setLocale(Locale('uk', 'UA'));
            },
          ),
        ],
      ),
    );
  }
}

