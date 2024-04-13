import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(), //nav bar at the top of screen
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Food Name',
              ),
              onChanged: (value) {
                
              },
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              child: const Text('Submit'),
              onPressed: () {

              },
            ),
          ]
        )
      ), //text in the middle of screen
    );
  }
}
