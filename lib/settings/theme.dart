import 'package:ball_hw/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../answer_provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnswerProvider _state = Provider.of<AnswerProvider>(context);
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
              style: TextStyle(
                color: Color(0xFFDFEDFF),
                fontFamily: 'Nunito',
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ThemeContainer(
              image: 'assets/images/image.png',
              textTheme: 'standard',
              onChanged: _state.changeButtonTheme,
              value1: ThemeApp.theme1),
          ThemeContainer(
              image: 'assets/images/image 27.png',
              textTheme: 'universe',
              onChanged: _state.changeButtonTheme,
              value1: ThemeApp.theme2),
          ThemeContainer(
              image: 'assets/images/11 1.png',
              textTheme: 'water_color',
              onChanged: _state.changeButtonTheme,
              value1: ThemeApp.theme3),
          ThemeContainer(
              image: 'assets/images/685 1.png',
              textTheme: 'comic',
              onChanged: _state.changeButtonTheme,
              value1: ThemeApp.theme4),
          ThemeContainer(
              image: 'assets/images/423826-PE4KYC-325 1.png',
              textTheme: 'mystic',
              onChanged: _state.changeButtonTheme,
              value1: ThemeApp.theme5),
        ],
      ),
    );
  }
}

class ThemeContainer extends StatelessWidget {
  final String textTheme;
  final ValueChanged<ThemeApp?> onChanged;
  final ThemeApp value1;
  final String image;
  ThemeContainer({Key? key,
    required this.textTheme,
    required this.onChanged,
    required this.value1,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnswerProvider _state = Provider.of<AnswerProvider>(context);
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            child: Image.asset(
              image,
              width: 45,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            textTheme,
            style: Style.fs20Regular400,
          ).tr(),
          Spacer(),
          Theme(
            data: ThemeData(
              unselectedWidgetColor: kTextColor,
            ),
            child: Transform.scale(
              scale: 1.5,
              child: Radio<ThemeApp>(
                activeColor: kTextColor,
                value: value1,
                groupValue: _state.themeButton,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
