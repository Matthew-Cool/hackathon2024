import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/food.dart';

class Workout extends StatefulWidget {
  const Workout({super.key, required this.name, required this.estimatedCalBurned});

  final String name;
  final int estimatedCalBurned;

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {  
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
            color: Color.fromARGB(217, 251, 89, 89)),
        //margin: const EdgeInsets.all(),
        child: Text(
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
            widget.name),
      ),
    );
  }
}
