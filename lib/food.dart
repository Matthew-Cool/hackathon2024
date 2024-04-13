import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/foodItem.dart';
import 'package:hackathon_app/foodtips.dart';
import 'package:hackathon_app/main.dart';

class Food extends StatefulWidget {
  const Food({
    Key? key,
  }) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  String searchText = '';
  TextEditingController customCalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.add),
          onPressed: () {
            showCustomCalDialog(context);
          },
        ),
        middle: Container(
          padding: const EdgeInsets.all(5),
          child: const Image(
            image: AssetImage('assets/images/appBarIcon.png'),
          ),
        ),
        trailing: CupertinoButton(
          child: const Icon(CupertinoIcons.list_number),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const Page4(),
              ),
            );
          },
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
              placeholder: 'Search Food',
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var foodItem in foodItems)
                      if (foodItem.food.toLowerCase().contains(searchText.toLowerCase()))
                        FoodItem(food: foodItem.food, calories: foodItem.calories),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 35,),
          ],
        ),
      ),
    );
  }

  Future<void> showCustomCalDialog(BuildContext context) async {
    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Add Custom Amount of Calories'),
          content: Column(
            children: [
              const Text('Enter the calorie amount:'),
              CupertinoTextField(
                controller: customCalController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: BoxDecoration(color: CupertinoColors.systemGrey)
              ),
            ],
          ),
          actions: <Widget>[
            CupertinoButton(
              onPressed: () {
                double customCal = double.tryParse(customCalController.text) ?? 0.0;
                g_calorie += customCal;
                g_gained += customCal;
                customCalController.clear();
                Navigator.pop(context); // Dismiss the dialog
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }
}

List<FoodItemData> foodItems = [
  FoodItemData(food: "Chicken Breast", calories: 165.0),
  FoodItemData(food: "Salmon Fillet", calories: 206.0),
  FoodItemData(food: "Broccoli", calories: 55.0),
  FoodItemData(food: "Brown Rice", calories: 216.0),
  FoodItemData(food: "Sweet Potato", calories: 180.0),
  FoodItemData(food: "Avocado", calories: 240.0),
  FoodItemData(food: "Egg", calories: 68.0),
  FoodItemData(food: "Greek Yogurt", calories: 100.0),
  FoodItemData(food: "Oats", calories: 389.0),
  FoodItemData(food: "Almonds", calories: 575.0),
  FoodItemData(food: "Apple", calories: 95.0),
  FoodItemData(food: "Banana", calories: 105.0),
  FoodItemData(food: "Spinach", calories: 23.0),
  FoodItemData(food: "Carrots", calories: 41.0),
  FoodItemData(food: "Tomato", calories: 18.0),
  FoodItemData(food: "Quinoa", calories: 222.0),
  FoodItemData(food: "Chia Seeds", calories: 486.0),
  FoodItemData(food: "Blueberries", calories: 57.0),
  FoodItemData(food: "Strawberries", calories: 33.0),
  FoodItemData(food: "Kale", calories: 36.0),
  FoodItemData(food: "Cucumber", calories: 16.0),
  FoodItemData(food: "Lentils", calories: 230.0),
  FoodItemData(food: "Chickpeas", calories: 269.0),
  FoodItemData(food: "Green Beans", calories: 31.0),
  FoodItemData(food: "Pumpkin Seeds", calories: 559.0),
  FoodItemData(food: "Walnuts", calories: 654.0),
  FoodItemData(food: "Peanut Butter", calories: 94.0),
  FoodItemData(food: "Tofu", calories: 144.0),
  FoodItemData(food: "Cottage Cheese", calories: 98.0),
  FoodItemData(food: "Milk", calories: 122.0),
  FoodItemData(food: "Beef", calories: 250.0),
  FoodItemData(food: "Pork Chop", calories: 242.0),
  FoodItemData(food: "Shrimp", calories: 85.0),
  FoodItemData(food: "Sardines", calories: 208.0),
  FoodItemData(food: "Cod", calories: 82.0),
  FoodItemData(food: "Whole Wheat Bread", calories: 247.0),
  FoodItemData(food: "Pasta", calories: 221.0),
  FoodItemData(food: "Cheese", calories: 402.0),
  FoodItemData(food: "Yogurt", calories: 61.0),
  FoodItemData(food: "Lasagna", calories: 320.0),
  FoodItemData(food: "Burrito", calories: 430.0),
  FoodItemData(food: "Quesadilla", calories: 480.0),
  FoodItemData(food: "Nachos", calories: 290.0),
  FoodItemData(food: "Hamburger", calories: 250.0),
  FoodItemData(food: "Chicken Salad", calories: 150.0),
  FoodItemData(food: "Caesar Salad", calories: 180.0),
  FoodItemData(food: "Greek Salad", calories: 160.0),
  FoodItemData(food: "Tuna Salad", calories: 200.0),
  FoodItemData(food: "Miso Soup", calories: 40.0),
  FoodItemData(food: "Clam Chowder", calories: 180.0),
  FoodItemData(food: "Potato Soup", calories: 210.0),
  FoodItemData(food: "Tomato Soup", calories: 170.0),
  FoodItemData(food: "Minestrone Soup", calories: 160.0),
  FoodItemData(food: "Chili", calories: 280.0),
  FoodItemData(food: "Pad Thai", calories: 400.0),
  FoodItemData(food: "Fried Rice", calories: 370.0),
  FoodItemData(food: "Risotto", calories: 320.0),
  FoodItemData(food: "Samosa", calories: 80.0),
  FoodItemData(food: "Empanadas", calories: 250.0),
  FoodItemData(food: "Fish and Chips", calories: 600.0),
  FoodItemData(food: "Shrimp Scampi", calories: 220.0),
  FoodItemData(food: "Lobster Bisque", calories: 300.0),
  FoodItemData(food: "Crab Cakes", calories: 320.0),
  FoodItemData(food: "Sashimi", calories: 120.0),
  FoodItemData(food: "Tempura", calories: 250.0),
  FoodItemData(food: "Ceviche", calories: 90.0),
  FoodItemData(food: "Guacamole", calories: 120.0),
  FoodItemData(food: "Hummus", calories: 150.0),
  FoodItemData(food: "Baba Ganoush", calories: 180.0),
  FoodItemData(food: "Tabbouleh", calories: 160.0),
  FoodItemData(food: "Falafel", calories: 320.0),
  FoodItemData(food: "Gyros", calories: 480.0),
  FoodItemData(food: "Kebabs", calories: 280.0),
  FoodItemData(food: "Pho", calories: 450.0),
  FoodItemData(food: "Banh Mi", calories: 350.0),
  FoodItemData(food: "Tiramisu", calories: 300.0),
  FoodItemData(food: "Creme Brulee", calories: 250.0),
  FoodItemData(food: "Panna Cotta", calories: 180.0),
  FoodItemData(food: "Macarons", calories: 100.0),
  FoodItemData(food: "Eclairs", calories: 220.0),
  FoodItemData(food: "Cannoli", calories: 270.0),
  FoodItemData(food: "Baklava", calories: 320.0),
  FoodItemData(food: "Key Lime Pie", calories: 350.0),
  FoodItemData(food: "Pecan Pie", calories: 500.0),
  FoodItemData(food: "Tres Leches Cake", calories: 400.0),
  FoodItemData(food: "Red Velvet Cake", calories: 450.0),
  FoodItemData(food: "Carrot Cake", calories: 380.0),
  FoodItemData(food: "Banana Bread", calories: 230.0),
  FoodItemData(food: "Pumpkin Pie", calories: 320.0),
];

class FoodItemData {
  final String food;
  final double calories;

  FoodItemData({required this.food, required this.calories});
}
