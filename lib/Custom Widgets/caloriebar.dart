import 'package:flutter/material.dart';

class CalorieBar extends StatefulWidget {
  const CalorieBar({super.key});

  @override
  State<CalorieBar> createState() => _CalorieBarState();
}

class _CalorieBarState extends State<CalorieBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: 350,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(3.0),
        ),
        border: Border.all(color: Color.fromARGB(243, 235, 235, 235), width: 4),
      ),
      child: Center(
        child: Text("Calories"),
      ),
    );
  }
}
