import 'package:flutter/material.dart';

import '../../../style/text_style.dart';

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
            style: AppTextStyle.fs20Regular400,
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
