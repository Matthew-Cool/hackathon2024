import 'package:flutter/material.dart';
import 'package:hackathon_app/main.dart';

String medal = "assets/images/DEFAULTMedal.png";

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

void getPoints(bool day, int points) {
  if ((day == true) && (points < 10)) {
    g_totalPoints++;
  }
  else {
    g_totalPoints = 0;
    day = true;
  }  
}


String getMedal() {
  
  int increment = 200;

  String medal = "assets/images/DEFAULTMedal.png";

  if(g_totalPoints > (1 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(g_totalPoints > (2 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(g_totalPoints > (3 * increment)) {
    medal = "assets/images/BRONZEMedal.png";
  }
  else if(g_totalPoints > (4 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(g_totalPoints > (5 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(g_totalPoints > (6 * increment)) {
    medal = "assets/images/SILVERMedal.png";
  }
  else if(g_totalPoints > (7 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(g_totalPoints > (8 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(g_totalPoints > (9 * increment)) {
    medal = "assets/images/GOLDMedal.png";
  }
  else if(g_totalPoints > (10 * increment)) {
    medal = "assets/images/PLATINUMMedal.png";
    int num = 0;
    for(int i = 1; g_totalPoints > 70; i++) {
      num++;
      medal = medal + num.toString();
    }
  }

  return medal;
}




