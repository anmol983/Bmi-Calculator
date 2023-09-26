import 'package:flutter/material.dart';
class cardreuse extends StatelessWidget {
  cardreuse({@required this.colour, this.childwidget});
  final Color? colour;
  final Widget? childwidget;
  @override
  Widget build(BuildContext context) {
    return Container(


      child: childwidget,
      margin: EdgeInsets.all(20.0),
      height: 200.0,
      width: 200.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}