import 'package:flutter/material.dart';

class Awards extends StatefulWidget {
  const Awards({super.key});

  @override
  State<Awards> createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Hello stuff"),
      ),
    );
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


  String metal = "undefined";
  if(value > (1 * increment)) {
    metal = "BronzeI";
  }
  else if(value > (2 * increment)) {
    metal = "BronzeII";
  }
  else if(value > (3 * increment)) {
    metal = "BronzeIII";
  }
  else if(value > (4 * increment)) {
    metal = "SilverI";
  }
  else if(value > (5 * increment)) {
    metal = "SilverII";
  }
  else if(value > (6 * increment)) {
    metal = "SilverIII";
  }
  else if(value > (7 * increment)) {
    metal = "GoldI";
  }
  else if(value > (8 * increment)) {
    metal = "GoldII";
  }
  else if(value > (9 * increment)) {
    metal = "GoldIII";
  }
  else if(value > (10 * increment)) {
    metal = "Platinum";
    int num = 0;
    for(int i = 1; value > 100; i++){
      num++;
      metal = metal + num.toString();
    }
  }

  return metal;
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


