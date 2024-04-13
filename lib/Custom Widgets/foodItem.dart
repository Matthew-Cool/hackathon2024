import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/food.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.food});

  final String food;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(5),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 400,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(width: 5),
            color: const Color.fromARGB(217, 230, 154, 40)),
        //margin: const EdgeInsets.all(),
        child: Text(
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
            widget.food),
      ),
    );
  }
}
