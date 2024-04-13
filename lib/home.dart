import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/caloriebar.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: Column(
        children: [
          CalorieBar()
        ],
      ),
    );
  }
}
