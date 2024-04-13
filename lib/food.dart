import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/foodItem.dart';

class Food extends StatefulWidget {
  const Food({
    Key? key,
  }) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
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
            //SizedBox(height: 100,),
          ],
        ),
      )
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
  FoodItemData(food: "Hummus", calories: 177.0),
  FoodItemData(food: "Dark Chocolate", calories: 604.0),
  FoodItemData(food: "Coffee", calories: 2.0),
  FoodItemData(food: "Green Tea", calories: 1.0),
  FoodItemData(food: "Red Wine", calories: 125.0),
  FoodItemData(food: "Beer", calories: 153.0),
  FoodItemData(food: "Orange Juice", calories: 45.0),
  FoodItemData(food: "Coca-Cola", calories: 140.0),
  FoodItemData(food: "Sprite", calories: 140.0),
];

class FoodItemData {
  final String food;
  final double calories;

  FoodItemData({required this.food, required this.calories});
}
