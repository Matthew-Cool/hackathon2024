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
      child: Center(child: Text("Hello"),),
    );
  }
}
