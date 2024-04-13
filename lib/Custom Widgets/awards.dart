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

String getMedal(String category, double cal) {
  
  int increment = 200;

  String medal = "undefined";

  if(cal > (1 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(cal > (2 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(cal > (3 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(cal > (4 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(cal > (5 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(cal > (6 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(cal > (7 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(cal > (8 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(cal > (9 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(cal > (10 * increment)) {
    medal = "assets/images/PLATINUMMedal.png";
    int num = 0;
    for(int i = 1; cal > 100; i++){
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


