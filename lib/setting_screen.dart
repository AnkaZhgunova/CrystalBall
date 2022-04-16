import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

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
                  color: Color(0xFFDFEDFF),
                ),
              ),
              Text(
                'Назад',
                style: TextStyle(
                    color: Color(0xFFDFEDFF),
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 24,
              right: 243,
              bottom: 20,
            ),
            child: Text(
              'Настройки',
              style: TextStyle(
                color: Color(0xFFDFEDFF),
                fontFamily: 'Nunito',
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SettingsContainer(
            info: 'Изменить язык',
            setting: 'Русский',
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFFDFEDFF),
            ),
          ),
          SettingsContainer(
            info: 'Изменить тему',
            setting: 'Стандартная',
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFFDFEDFF),
            ),
          ),
          SettingsContainer(
            info: 'Оценить',
            setting: null,
            icon: null,
          ),
          SettingsContainer(
            info: 'Версия',
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

  SettingsContainer({
    this.setting,
    required this.info,
    this.icon,
  });

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
            style: TextStyle(
              color: Color(0xFFDFEDFF),
              fontFamily: 'Nunito',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            setting ?? "",
            style: TextStyle(
              color: Color(0xFFDFEDFF),
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: icon ?? SizedBox(),
          ),
        ],
      ),
    );
  }
}
