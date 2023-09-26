import 'package:flutter/material.dart';
import 'constant.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.iconns, this.onPressed});
  final IconData? iconns;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      onPressed: onPressed,
      child: Icon(iconns),
      shape: CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}
