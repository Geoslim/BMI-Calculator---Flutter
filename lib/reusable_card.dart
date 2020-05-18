import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
//  const ReusableContainer({
//    Key key,
//  }) : super(key: key);

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      //() {
//        setState(() {
//         selectedGender = Gender.Female;
//        });
//        print('hello');
//      },
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
