import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculateRecalculateButton extends StatelessWidget {
  String? buttonText;
  void Function()? onPress;

  CalculateRecalculateButton({this.buttonText, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
          buttonText!,
          style: kNumberTextSyle.copyWith(fontSize: 25),
        )),
        height: kBottomBorderHeight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
        ),
      ),
    );
  }
}
