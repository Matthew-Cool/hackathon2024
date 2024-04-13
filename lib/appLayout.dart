import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

/// The Widget that configures your application.
class FitnessApp extends StatefulWidget {
  const FitnessApp({super.key});

  @override
  State<FitnessApp> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  final TextEditingController _controller = TextEditingController();
  String _savedData = '';
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedData = prefs.getString('data') ?? '';
    });
  }

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', _controller.text);
  }
  
  @override
  Widget build(BuildContext context) {

    return CupertinoApp(

      restorationScopeId: 'app', //prob don't need this, we can delete if it doesn't behave :

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // Change theme here:
      theme: const CupertinoThemeData( //this is default, but can be overrule the theme by change 'color' parameters
        applyThemeToAll: true,
        barBackgroundColor: CupertinoColors.secondaryLabel,
        primaryColor: CupertinoColors.activeBlue,
        scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            color: CupertinoColors.white,
            // Change font here
          ),
          primaryColor: CupertinoColors.white, 
        )
      ),

      // lets now create the page scaffold
      home: Builder(
        builder: (context) {
          return _buildContent();
        },
      ),
    );
  }

  
  Widget _buildContent() {
    if (_savedData.isEmpty) {
      return CupertinoAlertDialog(
        title: const Text(
          'Please enter your name:',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        content: CupertinoTextField(
          controller: _controller,
          placeholder: 'Enter Name',
          decoration: BoxDecoration(color: CupertinoColors.systemGrey),
        ),
        actions: <Widget>[
          CupertinoButton(
            onPressed: () async {
              _navigatorKey.currentState?.pop(); // Dismiss the dialog
              await _saveData(); // Save the entered data
              setState(() {
                _savedData = _controller.text;
              });
              Restart.restartApp();
            },
            child: Text('Confirm'),
          ),
        ],
      );
    } else {
      return PageScaffoldCustom(savedData: _savedData);
    }
  }
}
