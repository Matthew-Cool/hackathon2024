import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
        child: Text("Page3"),
      ),
    );
  }
}
