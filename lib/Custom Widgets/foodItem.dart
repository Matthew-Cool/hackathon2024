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
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(4),
        width: 400,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(width: 5),
            color: Color.fromARGB(217, 230, 154, 40)),
        margin: EdgeInsets.all(5),
        child: Text(
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
            widget.food),
      ),
    );
  }
}
