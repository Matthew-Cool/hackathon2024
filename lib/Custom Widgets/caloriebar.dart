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
      decoration: BoxDecoration(),
      alignment: Alignment.center,
      margin: EdgeInsets.all(8.0),
      width: 40,
      height: 40,
      child: const Text(
          style: TextStyle(
            color: Color.fromARGB(225, 142, 14, 14),
          ),
          "Hello world"),
    );
  }
}
