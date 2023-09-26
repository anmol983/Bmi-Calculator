import 'package:flutter/material.dart';
import 'constant.dart';
class bottombutton extends StatelessWidget {
  bottombutton({this.buttontitle,this.ontap});
  final String? buttontitle;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(

        margin: EdgeInsets.only(top: 80.0),
        child: Center(
          child: Text(
            buttontitle!,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        width: double.infinity,
        height: 10.0,
        color: bottomcolor,
      ),
    );
  }
}
