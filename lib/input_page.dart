import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//IMPORTING MY WIDGETS
import 'icon_content.dart';
import 'reusable_card.dart';

//final vs const - both are immutable  stateless are immutable too
//final = only set once at ANY time during a run --
//      if created AFTER the code is compiled ex DateTime.now()
//const = set at COMPILE time and does NOT have access at runtime

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

//class myGender {
//  String sex;
//  Gender({this.sex});
//}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
//1 = male, 2 = female
  void updateColour(Gender selectedGender) {
    //male card
    if (selectedGender == Gender.male) {
      //
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    } else {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
//      body: Center(
//        child: Text('Body Text'),
//      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
//                    print('male card pressed');
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
//                    print('female card pressed');
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                ),
              ),
            ],
          )),
//          Expanded(
//            child: ReusableCard(
//              colour: activeCardColor,
//            ),
//          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//      ),
    );
  }
}

//CREATING MY OWN WIDGETS
//-------------------------------------
//class IconContent extends StatelessWidget {
//  IconContent({this.label, this.icon});
//
//  final IconData icon;
//  final String label;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        Icon(
//          icon,
//          size: 80.0,
//        ),
//        SizedBox(
//          height: 15.0,
//        ),
//        Text(
//          label,
//          style: TextStyle(
//            fontSize: 18.0,
//            color: Color(0xff8d8e98),
//          ),
//        ),
//      ],
//    );
//  }
//}

//-------------------------------------
//class ReusableCard extends StatelessWidget {
//  ReusableCard({@required this.colour, this.cardChild});
//
////  Color colour;
////final makes the color immutable
//
//  final Color colour;
//  final Widget cardChild;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: cardChild,
//      margin: EdgeInsets.all(15.0),
//      decoration: BoxDecoration(
////        color: Color(0xff1d1e33),
//        color: colour,
//        borderRadius: BorderRadius.circular(10.0),
//      ),
//    );
//  }
//}
