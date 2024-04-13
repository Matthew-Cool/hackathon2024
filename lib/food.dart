import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/foodItem.dart';

class Food extends StatelessWidget {
  const Food({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(), //nav bar at the top of screen
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FoodItem(food: "Macaroni and Cheese"),
            FoodItem(food: "Mashed Potatoes")
          ],
        ),
    );
  }
}
