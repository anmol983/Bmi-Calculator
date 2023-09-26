import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/card_content.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class Resultpage extends StatelessWidget {
  Resultpage({this.bmical,this.result,this.intervations});
  final String? bmical;
  final String? intervations;
  final String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: cardreuse(
              colour: Color(0xFF15225),
              childwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result!,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    bmical!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    textAlign:TextAlign.center,
                    intervations!,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35.0,
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: bottombutton(
              buttontitle: 'RECALCULATE',
              ontap:  (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Inputpage();
                },),);
              },
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'BMI',
        ),
      ),
    );
  }
}
