import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/food.dart';
import 'package:hackathon_app/home.dart';
import 'package:hackathon_app/fitness.dart';

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
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            label: "Food",
            icon: Icon(
              Icons.restaurant,
            ),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: "Fitness",
            icon: Icon(
              Icons.fitness_center,
            ),
          )
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Food();
          case 1:
            return Home(savedData: savedName);
          case 2:
            return Fitness();
          default:
            return Home(savedData: savedName);
        }
      },
    );
  }
}
