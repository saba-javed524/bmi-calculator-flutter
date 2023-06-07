import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconAndContent extends StatelessWidget {
  final IconData cardIcon;
  final String gender;

  IconAndContent(this.cardIcon, this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: kIconSize,
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
