import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/custom%20Widgets/workouts.dart';

class Fitness extends StatefulWidget {
  const Fitness({
    Key? key,
  }) : super(key: key);

  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  String searchText = '';

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
      ), //nav bar at the top of screen
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            CupertinoSearchTextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              placeholder: 'Search Workouts',
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var theWorkout in workoutItems)
                      if (theWorkout.name.toLowerCase().contains(searchText.toLowerCase()))
                        Workout(name: theWorkout.name, estimatedCalBurned: theWorkout.estimatedCalBurned),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 100,),
          ],
        ),
      )
    );
  }
}

List<WorkoutData> workoutItems = [
  WorkoutData(name: "Jumping Jacks (20 minutes)", estimatedCalBurned: 100),
  WorkoutData(name: "Push-ups (3 sets of 10 reps)", estimatedCalBurned: 150),
  WorkoutData(name: "Sit-ups (15 minutes)", estimatedCalBurned: 100),
  WorkoutData(name: "Squats (5 sets of 20 reps)", estimatedCalBurned: 150),
  WorkoutData(name: "Burpees (15 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "High Knees (15 minutes)", estimatedCalBurned: 150),
  WorkoutData(name: "Mountain Climbers (20 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "Plank (5 minutes)", estimatedCalBurned: 100),
  WorkoutData(name: "Lunges (3 sets of 10 reps per leg)", estimatedCalBurned: 150),
  WorkoutData(name: "Jump Rope (30 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "Cycling (1 hour)", estimatedCalBurned: 250),
  WorkoutData(name: "Running Stairs (30 minutes)", estimatedCalBurned: 300),
  WorkoutData(name: "Swimming (1 hour)", estimatedCalBurned: 300),
  WorkoutData(name: "Rowing (30 minutes)", estimatedCalBurned: 300),
  WorkoutData(name: "Jumping Rope (30 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "Climbing (1 hour)", estimatedCalBurned: 350),
  WorkoutData(name: "Boxing (1 hour)", estimatedCalBurned: 400),
  WorkoutData(name: "Yoga (1 hour)", estimatedCalBurned: 200),
  WorkoutData(name: "Pilates (45 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "Dancing (1 hour)", estimatedCalBurned: 250),
  WorkoutData(name: "Circuit Training (1 hour)", estimatedCalBurned: 350),
  WorkoutData(name: "Kickboxing (1 hour)", estimatedCalBurned: 400),
  WorkoutData(name: "HIIT (45 minutes)", estimatedCalBurned: 350),
  WorkoutData(name: "Zumba (1 hour)", estimatedCalBurned: 300),
  WorkoutData(name: "Barre (45 minutes)", estimatedCalBurned: 200),
  WorkoutData(name: "CrossFit (1 hour)", estimatedCalBurned: 400),
  WorkoutData(name: "Hiking (2 hours)", estimatedCalBurned: 300),
  WorkoutData(name: "Rock Climbing (2 hours)", estimatedCalBurned: 400),
  WorkoutData(name: "Martial Arts (1 hour)", estimatedCalBurned: 350),
  WorkoutData(name: "Jump Squats (3 sets of 10 reps)", estimatedCalBurned: 150)
];

class WorkoutData {
  final String name;
  final int estimatedCalBurned;

  WorkoutData({required this.name, required this.estimatedCalBurned});
}
