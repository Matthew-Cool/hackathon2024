import 'package:flutter/cupertino.dart';

class Food extends StatelessWidget {
  const Food({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(), //nav bar at the top of screen
      child: Center(
        child: Text("Food"),
      ), //text in the middle of screen
    );
  }
}
