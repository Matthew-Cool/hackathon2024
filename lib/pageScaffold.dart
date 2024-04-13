import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/page1.dart';
import 'package:hackathon_app/page2.dart';
import 'package:hackathon_app/page3.dart';

class PageScaffoldCustom extends StatelessWidget {
  const PageScaffoldCustom({Key? key}) : super(key: key);

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
          return CupertinoTabView(builder: (context) => Page1());
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
