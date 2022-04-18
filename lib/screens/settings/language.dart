import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:easy_localization/easy_localization.dart';

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

class LanguageContainer extends StatelessWidget {
  final String title;
  final bool selected;
  final ValueChanged<bool?> onChanged;

  LanguageContainer({
    Key? key,
    required this.title,
    required this.selected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF36383A),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Style.fs20Regular400,
          ),
          GestureDetector(
            onTap: () {
              onChanged.call(selected);
            },
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                border: Border.all(
                  width: 2,
                  color: Color(0xffDFEDFF),
                ),
              ),
              child: Visibility(
                visible: selected,
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xffDFEDFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
