import 'package:cuisine/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Notation extends StatelessWidget {
  final int score;
  const Notation({Key? key, this.score = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        ...List.generate(
            score,
            (index) => Icon(
                  Icons.star,
                  size: 16,
                  color: mainColor,
                )).toList(),
        ...List.generate(
            5 - score,
            (index) => Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.grey.shade300,
                )).toList(),
      ]),
    );
  }
}
