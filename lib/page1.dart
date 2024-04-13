import 'package:flutter/cupertino.dart';

class Page1 extends StatelessWidget {
  final String savedData;
  
  const Page1({
    super.key,
    required this.savedData,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(), //nav bar at the top of screen
      child: Center(
        child: Text('Welcome, $savedData'),
      ), //text in the middle of screen
    );
  }
}