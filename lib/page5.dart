import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/Custom%20Widgets/awards.dart';
import 'package:hackathon_app/main.dart';


class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Container(
          padding: const EdgeInsets.all(5),
          child: const Image(
            image: AssetImage('assets/images/appBarIcon.png'),
          ),
        ),
        
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(padding: EdgeInsets.only(top: 200), child: Text("Calories", style: TextStyle(fontSize: 20))),
              Image(height: 440, width: 500, fit: BoxFit.fill,
                image: AssetImage('assets/images/BRONZEMedal.png'),),
              Container(padding: EdgeInsets.only(top: 20), child: Text("1", style: TextStyle(fontSize: 20))),
            ]
          
        ),
      )
    );
  }


  
}



//String medal = getMedal("Calories", 11); 
//(what the medal is for, what the score is)


