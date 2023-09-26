import 'package:flutter/material.dart';
import 'constant.dart';
class icons extends StatelessWidget {

  icons({this.iconss,this.label});
  final IconData? iconss;
  final String? label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          color: Colors.white,
          size: 50.0,
          iconss,
        ),
        Text(
          label!,


          style: styletext,
        ),
      ],
    );
  }
}