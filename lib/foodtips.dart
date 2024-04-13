import 'package:flutter/cupertino.dart';

class Page4 extends StatefulWidget {
 const Page4({Key? key}) : super(key: key);

 @override
 State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
 @override
 Widget build(BuildContext context) {
   return CupertinoPageScaffold(
     navigationBar: CupertinoNavigationBar(
       leading: CupertinoButton(
         child: Icon(CupertinoIcons.back),
         onPressed: () => Navigator.pop(context),
       ),
     ),
     child: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
             "Calorie Tracking Tips",
             style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(height: 20),
           Expanded(
             child: ListView(
               children: <Widget>[
                 _buildTipItem("1. Keep a food diary."),
                 _buildTipItem("2. Measure portions accurately."),
                 _buildTipItem("3. Use a calorie tracking app."),
                 _buildTipItem("4. Be mindful of liquid calories."),
                 _buildTipItem("5. Focus on whole foods."),
                 _buildTipItem("6. Stay consistent with tracking."),
               ],
             ),
           ),
         ],
       ),
     ),
   );
 }

 Widget _buildTipItem(String tip) {
   return Padding(
     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
     child: Text(
       tip,
       style: TextStyle(fontSize: 18),
     ),
   );
 }
}