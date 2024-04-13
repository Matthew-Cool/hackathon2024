import 'package:flutter/material.dart';
import 'appLayout.dart';


// TO GET WIDTH AND HEIGHT OF SCREEN
// Width: MediaQuery.of(context).size.width
// Height: MediaQuery.of(context).size.height

double g_calorie = 0.0;
double g_goal = 2000.0;
double g_burned = 0.0;
double g_gained = 0.0;
int g_days = 0;
int g_counter = 0;

void main() async {
  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const FitnessApp()); //lets actually start the app, go to app.dart
}

