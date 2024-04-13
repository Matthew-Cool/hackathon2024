import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/Custom%20Widgets/caloriebar.dart';
import 'package:hackathon_app/Custom%20Widgets/progress.dart';
import 'package:hackathon_app/main.dart';
import 'package:hackathon_app/page5.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  final String savedData;
  const Home({super.key, required this.savedData});

  @override
  State<Home> createState() => _Page2State(savedName: savedData);
}

class _Page2State extends State<Home> {
  final String savedName;
  _Page2State({Key? key, required this.savedName});

  @override
  Widget build(BuildContext context) {
    int cal;
    int goal;
    cal = g_calorie.toInt();
    goal = g_goal.toInt();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Container(
          padding: const EdgeInsets.all(5),
          child: const Image(
            image: AssetImage('assets/images/appBarIcon.png'),
          ),
        ),
        trailing: CupertinoButton(
            child: Icon(CupertinoIcons.star_fill),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const Page5(),
                ),
              );
            }),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(padding: EdgeInsets.only(top: 120), child: ProgressBar()),
            Container(padding: EdgeInsets.only(top: 20), child: Text(style: const TextStyle(fontSize: 15), "$cal / $goal Calories")),
            Container(padding: EdgeInsets.only(top:10), child: Text(style: const TextStyle(fontSize: 15), "Calories Burned: $g_burned Calories")),
            Container(padding: EdgeInsets.only(top:10), child: Text(style: const TextStyle(fontSize: 15), "Calories Gained: $g_gained Calories")),
            Container(padding: EdgeInsets.only(top: 25) ,child: Text(style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),"Welcome $savedName!")),
            const CalorieBar(),
            
          ],
        ),
      ),
    );
  }
}
