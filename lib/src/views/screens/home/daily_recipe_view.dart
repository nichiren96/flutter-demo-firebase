import 'package:cuisine/src/helpers/navigation_helper.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/views/screens/detail/detail_view.dart';
import 'package:cuisine/src/views/widgets/recipe_item.dart';
import 'package:flutter/material.dart';

class DailyRecipeView extends StatelessWidget {
  const DailyRecipeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goto(context, DetailView()),
      child: Container(
        child: Column(
          children: [HorizontalRecipes(), VerticalRecipes()],
        ),
      ),
    );
  }
}

class HorizontalRecipes extends StatelessWidget {
  const HorizontalRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) / 4,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [RecipeCard(), RecipeCard(), RecipeCard()],
        ),
      ),
    );
  }
}

class VerticalRecipes extends StatelessWidget {
  const VerticalRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecipeItem(),
        RecipeItem(),
        RecipeItem(),
        RecipeItem(),
      ],
    );
  }
}
