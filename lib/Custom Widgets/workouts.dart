import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/food.dart';
import 'package:hackathon_app/main.dart';

class Workout extends StatefulWidget {
  const Workout({super.key, required this.name, required this.estimatedCalBurned});

  final String name;
  final int estimatedCalBurned;

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {  
  //bool _isExpanded = false;
  
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(5),
      onPressed: () {g_calorie -= widget.estimatedCalBurned;
      g_burned += widget.estimatedCalBurned;
      //setState(() => _isExpanded = !_isExpanded);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 400,
        height: 85,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(width: 5),
            color: Color.fromARGB(217, 251, 89, 89)),
        //margin: const EdgeInsets.all(),
        child: allTheInfo(),
      ),
    );
  }

  Widget onlyTitle(){
    return Text(
    style: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
    widget.name);
  }

  Widget allTheInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
          widget.name
        ),
        const SizedBox(height: 20),
        Text('${widget.estimatedCalBurned} Estimated Calories Burned', style: const TextStyle(
            fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),)
      ],
    );
  }
}
