import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

//  Color colour;
//final makes the color immutable

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
//        color: Color(0xff1d1e33),
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
