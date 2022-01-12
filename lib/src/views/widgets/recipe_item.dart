import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/views/widgets/notation.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        isThreeLine: true,
        title: Text(
          "Chicken Salad",
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Pour 4 pers."),
            space(height: 8),
            Notation(
              score: 3,
            )
          ],
        ),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/plat.jpg"))),
        ),
        trailing:
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: width(context) - 16,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/plat.jpg"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Snack",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            space(height: 8),
            Text(
              "Sandwich",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            )
          ],
        ),
      ),
    );
  }
}

class CalendarRecipeCard extends StatelessWidget {
  const CalendarRecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: EdgeInsets.all(24),
        height: height(context) / 3.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/plat.jpg"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Snack",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            space(height: 8),
            Text(
              "Sandwich",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            )
          ],
        ),
      ),
    );
  }
}
