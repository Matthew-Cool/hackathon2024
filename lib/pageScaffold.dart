
import 'package:flutter/cupertino.dart';

class PageScaffoldCustom extends StatefulWidget {
  const PageScaffoldCustom({Key? key}) : super(key: key);

  @override
  State<PageScaffoldCustom> createState() => _PageScaffoldCustomState();
}

class _PageScaffoldCustomState extends State<PageScaffoldCustom> {
  

  @override
  Widget build(BuildContext context) {
    //double _sidebarButtonTextSize = 6 * MediaQuery.of(context).size.width * .01;

    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(), //nav bar at the top of screen
      child: Center(child: Text("Test")) //text in the middle of screen
    );
  }
}