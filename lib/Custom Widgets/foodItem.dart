import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/caloriebar.dart';
import 'package:hackathon_app/food.dart';
import 'package:hackathon_app/main.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.food, required this.calories});

  final double calories;
  final String food;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(5),
      onPressed: () {g_calorie += widget.calories;},
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 400,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(width: 5),
            color: Color.fromARGB(217, 121, 209, 96)),
        //margin: const EdgeInsets.all(),
        child: Text(
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 53, 50, 50)),
            widget.food),
      ),
    );
  }
}
