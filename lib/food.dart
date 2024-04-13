import 'package:flutter/cupertino.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar:
          CupertinoNavigationBar(), //nav bar at the top of screen
      child: Center(
        child: Text("Page1"),
      ), //text in the middle of screen
    );
  }
}