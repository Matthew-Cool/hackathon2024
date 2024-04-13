import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/caloriebar.dart';
import 'package:hackathon_app/page5.dart';

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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
            child: const Icon(CupertinoIcons.forward),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const Page5(),
                ),
              );
            }),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome, $savedName"),
          const CalorieBar(),
        ],
      ),
    );
  }
}
