import 'package:flutter/material.dart';
import 'app.dart';


// TO GET WIDTH AND HEIGHT OF SCREEN
// Width: MediaQuery.of(context).size.width
// Height: MediaQuery.of(context).size.height

void main() async {
  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const MyApp()); //lets actually start the app, go to app.dart
}

