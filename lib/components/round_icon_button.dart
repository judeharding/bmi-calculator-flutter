import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressedBtn});

  final IconData icon;
  final Function onPressedBtn;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressedBtn,
      elevation: 6.0,
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
