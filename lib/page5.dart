import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    if (g_counter == 8)
    {
      g_days = 1;
    }
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(CupertinoIcons.back,
         ),
         ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.only(top: 250),
          child: Column(
            children: [
              CircularPercentIndicator(
                percent: g_days/7.0,
                radius: 120.0,
                lineWidth: 150.0,
                progressColor: Color.fromARGB(255, 173, 26, 199),
                ),
              Text(style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 173, 26, 199),), "$g_days Day(s) out of a Week!"),
            ],
          ),
        ),
      ),
    );
  }
}