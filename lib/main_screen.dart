import 'package:ball_hw/constants.dart';
import 'package:ball_hw/settings/setting_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'answer_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnswerProvider _state = Provider.of<AnswerProvider>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image.png'),
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
                style: Style.fs25Regular400,
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


