import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/food.dart';
import 'package:hackathon_app/home.dart';
import 'package:hackathon_app/fitness.dart';

class PageScaffoldCustom extends StatelessWidget {
  const PageScaffoldCustom({Key? key}) : super(key: key);

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
            return Home();
          case 2:
            return Fitness();
          default:
            return Home();
        }
      },
    );
  }
}
