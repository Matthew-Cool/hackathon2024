import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/page1.dart';
import 'package:hackathon_app/page2.dart';
import 'package:hackathon_app/page3.dart';

class PageScaffoldCustom extends StatefulWidget {
  final String savedData;
  const PageScaffoldCustom({Key? key, required this.savedData}) : super(key: key);

  @override
  State<PageScaffoldCustom> createState() => _PageScaffoldCustomState(savedName: savedData);
}

class _PageScaffoldCustomState extends State<PageScaffoldCustom> {
  final String savedName;
  _PageScaffoldCustomState({Key? key, required this.savedName});

  @override
  Widget build(BuildContext context) {
    //double _sidebarButtonTextSize = 6 * MediaQuery.of(context).size.width * .01;

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.macwindow),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_left_circle_fill),
          )
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return CupertinoTabView(builder: (context) => Page1(savedData: savedName));
        } else if (index == 1) {
          return Page2();
        } else {
          return CupertinoTabView(
            builder: (context) => Page3(),
          );
        }
      },
    );
  }
}
