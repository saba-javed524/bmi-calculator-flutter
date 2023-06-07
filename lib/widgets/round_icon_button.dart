import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  IconData? addIcon;
  void Function()? onPressed;

  RoundIconButton({@required this.addIcon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      elevation: 16.0,
      splashColor: Colors.white,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(addIcon),
      shape: const CircleBorder(),
    );
  }
}
