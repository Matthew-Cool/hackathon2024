import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';

import 'pageScaffold.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const CupertinoApp(

      restorationScopeId: 'app', //prob don't need this, we can delete if it doesn't behave :

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // Change theme here:
      theme: CupertinoThemeData( //this is default, but can be overrule the theme by change 'color' parameters
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
      home: SizedBox( 
        height: double.infinity,
        width: double.infinity,
        child: PageScaffoldCustom(), //now lets actually build stuff, go to pageScaffold.dart
      )
    );
  }
}
