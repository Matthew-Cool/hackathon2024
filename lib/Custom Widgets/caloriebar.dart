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
      margin: const EdgeInsets.all(20),
      width: 350,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        border: Border.all(color: Color.fromARGB(243, 235, 235, 235), width: 4),
      ),
      child: const Center(
        child: Text("Calories"),
      ),
    );
  }
}
