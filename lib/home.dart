import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/caloriebar.dart';
import 'package:hackathon_app/page5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Page2State();
}

class _Page2State extends State<Home> {
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [CalorieBar()],
      ),
    );
  }
}
