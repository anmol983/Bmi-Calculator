import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'icons_content.dart';
import 'card_content.dart';
import 'constant.dart';
import 'result_page.dart';
import 'round_button.dart';
import 'bottom_button.dart';
import 'brain_calculator.dart';
enum Gender {
  male,
  female,
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender? gender;
  int height = 180;
  int weight = 50;
  int age=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: cardreuse(
                      colour:
                          gender == Gender.male ? activecolour : inactivecolour,
                      childwidget: icons(
                        iconss: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: cardreuse(
                      childwidget: icons(
                        iconss: Icons.female,
                        label: 'FEMALE',
                      ),
                      colour: gender == Gender.female
                          ? activecolour
                          : inactivecolour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: cardreuse(
              colour: activecolour,
              childwidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: styletext,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kstyletext,
                      ),
                      Text(
                        'cm',
                        style: styletext,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.purple,
                      inactiveTrackColor: Colors.black87,
                      thumbColor: Colors.purple,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 320.0,
                      //activeColor: Color(0xFFEB1555),

                      onChanged: (double newvaule) {
                        setState(() {
                          height = newvaule.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: cardreuse(
                    colour: activecolour,
                    childwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: styletext,
                        ),
                        Text(
                          weight.toString(),
                          style: styletext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              iconns: Icons.add,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;

                                });

                              },
                              iconns: Icons.remove,
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: cardreuse(
                    childwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: styletext,
                        ),
                        Text(
                          age.toString(),
                          style: styletext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              iconns: Icons.add,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  age--;

                                });

                              },
                              iconns: Icons.remove,
                            ),
                          ],
                        ),

                      ],
                    ),
                    colour: activecolour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: bottombutton(


              buttontitle: 'CALCULATE',
              ontap: (){
                Braincal cal=Braincal(height: height,weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Resultpage(
                    bmical: cal.Bmical(),
                    result: cal.check(),
                    intervations: cal.feebad(),
                  );
                },),);
              },
            ),
          ),
        ],
      ),
    );
  }
}


