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
           SizedBox(height: 120),
           Text(
              "Calorie Tracking Tips",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 0),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildTipItem("1. Purchase a digital scale to weigh food"),
                  _buildTipItem("2. Measure your food in mass, not volume"),
                  _buildTipItem("3. Weigh your food before cooking it"),
                  _buildTipItem("4. Be sure to track your calories even if you go over/under your limit"),
                  _buildTipItem("5. Make sure to track sauces as they have more calories than you would think"),
                  _buildTipItem("6. Take into account how much you exercise, and eat accordingly"),
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
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
