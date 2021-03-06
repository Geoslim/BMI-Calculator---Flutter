import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableColumnIcons extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color colour;

  ReusableColumnIcons({this.icon, this.label, this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
