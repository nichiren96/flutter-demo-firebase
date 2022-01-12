import 'package:cuisine/src/views/widgets/recipe_item.dart';
import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
          children: List.generate(10, (index) => CalendarRecipeCard())),
    );
  }
}
