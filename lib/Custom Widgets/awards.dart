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


