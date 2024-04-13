import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

import 'pageScaffold.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      navigatorKey: _navigatorKey, // Set the navigator key
      theme: const CupertinoThemeData(
        applyThemeToAll: true,
        barBackgroundColor: CupertinoColors.secondaryLabel,
        primaryColor: CupertinoColors.activeBlue,
        scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            color: CupertinoColors.white,
          ),
          primaryColor: CupertinoColors.white, 
        ),
      ),
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

// PageScaffoldCustom class definition goes here
