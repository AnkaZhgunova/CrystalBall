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
              style: Style.fs25Regular400,
            ).tr(),
          ),
          ThemeContainer(
              image: 'assets/images/image.png',
              textTheme: 'standard',
              selected: _state.appTheme == AppTheme.standard,
              appTheme: _state.appTheme,
              onChanged: (AppTheme theme){
                Navigator.pop(context, );
          },
          ),
          // ThemeContainer(
          //     image: 'assets/images/image 27.png',
          //     textTheme: 'universe',
          //     onChanged: _state.changeButtonTheme,
          //     value1: ThemeApp.theme2),
          // ThemeContainer(
          //     image: 'assets/images/11 1.png',
          //     textTheme: 'water_color',
          //     onChanged: _state.changeButtonTheme,
          //     value1: ThemeApp.theme3),
          // ThemeContainer(
          //     image: 'assets/images/685 1.png',
          //     textTheme: 'comic',
          //     onChanged: _state.changeButtonTheme,
          //     value1: ThemeApp.theme4),
          // ThemeContainer(
          //     image: 'assets/images/423826-PE4KYC-325 1.png',
          //     textTheme: 'mystic',
          //     onChanged: _state.changeButtonTheme,
          //     value1: ThemeApp.theme5),
        ],
      ),
    );
  }
}


class ThemeContainer extends StatefulWidget {
  final String textTheme;
  final bool selected;
  final ValueChanged<AppTheme> onChanged;
  final String image;
  final AppTheme appTheme;

  ThemeContainer({Key? key,
    required this.textTheme,
    required this.onChanged,
    required this.image,
    required this.selected,
    required this.appTheme,
  }) : super(key: key);

  @override
  State<ThemeContainer> createState() => _ThemeContainerState();
}

class _ThemeContainerState extends State<ThemeContainer> {
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            child: Image.asset(
              widget.image,
              width: 45,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            widget.textTheme,
            style: Style.fs20Regular400,
          ).tr(),
          Spacer(),
          GestureDetector(
            onTap: () {
              widget.onChanged.call(AppTheme);
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
                visible: widget.selected,
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
          )
        ],
      ),
    );
  }
}
