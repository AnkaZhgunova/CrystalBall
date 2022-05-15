import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../style/text_style.dart';

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