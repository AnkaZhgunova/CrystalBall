import 'dart:math';

import 'package:ball_hw/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AnswerProvider _state = Provider.of<AnswerProvider>(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image.png'),
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
                    'assets/Vector.png',
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Задай вопрос',
                style: TextStyle(
                  color: Color.fromRGBO(
                    223,
                    237,
                    255,
                    1,
                  ),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Nunito',
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/image 1.png'),
                  _state.image,
                  TextButton(
                    child: Text(
                      _state.element.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFDFEDFF),
                        fontSize: _state.size,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nunito',
                      ),
                    ),
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

class AnswerProvider extends ChangeNotifier {
  double size = 30;
  var element = 'НАЧАТЬ';
  List<String> answer = [
    'Да!',
    'Нет!',
    'Туманно...',
    'Перспективы \n не очень \n хорошие',
  ];
  final _random = new Random();
  Image image = Image.asset('assets/iside_circle.png');

  //List<String> get changeValue => answer;

  void changeAnswer() {
    element = answer[_random.nextInt(answer.length)];
    image = Image.asset('assets/image 2.png');
    size = 20;
    notifyListeners();
  }
}
