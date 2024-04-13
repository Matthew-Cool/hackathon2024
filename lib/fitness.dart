import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/page4.dart';

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _Page3State();
}

class _Page3State extends State<Fitness> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const Page4(),
              ),
            );
          },
          child: Icon(CupertinoIcons.forward),
        ),
      ),
      child: const Center(
        child: Text("Fitness"),
      ),
    );
  }
}
