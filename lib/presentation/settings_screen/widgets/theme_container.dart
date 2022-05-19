import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../data/models/app_theme.dart';
import '../../../style/text_style.dart';

class ThemeContainer extends StatefulWidget {
  final String textTheme;
  final ValueChanged<AppTheme> onChanged;
  final String image;
  final AppTheme value;
  final AppTheme currentValue;

  ThemeContainer({
    Key? key,
    required this.textTheme,
    required this.onChanged,
    required this.image,
    required this.currentValue,
    required this.value,
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
            style: AppTextStyle.fs20Regular400,
          ).tr(),
          Spacer(),
          GestureDetector(
            onTap: () {
              widget.onChanged.call(widget.value);
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
                visible: widget.currentValue == widget.value,
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
