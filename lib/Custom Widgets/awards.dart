import 'package:flutter/material.dart';



class Awards extends StatefulWidget {
  const Awards({super.key});

  @override
  State<Awards> createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(20),
      width: 350,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        border: Border.all(color: Color.fromARGB(243, 235, 235, 235), width: 4),
      ),
      child: const Center(
        child: Text("Rewards"),
      ),);
  }
}

String findMetal(String category, int value) {
  
  int increment = 0;

  if (category == "Calories") { // Every 10 Calories burned, increases Metal
    increment = 10;
  }
  else if (category == "Lost") { // Every 10 lbs lost, increment Metal
    increment = 5;
  }
  else if (category == "Streak") { // every 7 days, increment Metal
    increment = 7;
  }
  else {
    increment = 0;
  }


  String medal = "undefined";
  if(value > (1 * increment)) {
    medal = "BronzeI";
  }
  else if(value > (2 * increment)) {
    medal = "BronzeII";
  }
  else if(value > (3 * increment)) {
    medal = "BronzeIII";
  }
  else if(value > (4 * increment)) {
    medal = "SilverI";
  }
  else if(value > (5 * increment)) {
    medal = "SilverII";
  }
  else if(value > (6 * increment)) {
    medal = "SilverIII";
  }
  else if(value > (7 * increment)) {
    medal = "GoldI";
  }
  else if(value > (8 * increment)) {
    medal = "GoldII";
  }
  else if(value > (9 * increment)) {
    medal = "GoldIII";
  }
  else if(value > (10 * increment)) {
    medal = "Platinum";
    int num = 0;
    for(int i = 1; value > 100; i++){
      num++;
      medal = medal + num.toString();
    }
  }

  return medal;
}


/*
Award types: Num Calories Tracked, weight lost/gained?, Streaks, 
Award Levels: Bronze 1-3, Silver 1-3, Gold 1-3, Platinum 1+, 

Num Calories Tracked
Bronze: 

Weight Lost
Each level 5lbs.

Weight Gained *if applicable?

Streaks
Each level 1 week

*/


