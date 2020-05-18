import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({this.text, this.onTap});

  final Widget text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: text,
        ),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(
          bottom: 20.0,
        ),
        color: Color(kBottomContainerColor),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
