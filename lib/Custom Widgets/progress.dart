import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();

}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    bool limit_color;
    double hyper_deci;
    double deci_val = g_calorie/g_goal;
    double per_val;
    if (deci_val > 1.0)
    {
      hyper_deci = deci_val;
      deci_val = 1.0;
      per_val = hyper_deci * 100;

      limit_color = true;
    }
    else if (deci_val < 0.0)
    {
      hyper_deci = deci_val;
      deci_val = 0.0;
      per_val = hyper_deci * 100;

      limit_color = true;
    }
    else
    {
      per_val = deci_val * 100;

      limit_color = false;
    }
    return CircularPercentIndicator(
       percent: deci_val,
       radius: 120.0,
       lineWidth: 30.0,
       center: Text(style: TextStyle(fontSize: 30.0, color: limit_color ? Color.fromARGB(255, 242, 5, 5) : Color.fromARGB(255, 246, 243, 243)),"${per_val.toStringAsFixed(2)}%"),
       progressColor: limit_color ? Color.fromARGB(241, 242, 5, 5) : Color.fromARGB(240, 10, 219, 212),
       );
  }
}