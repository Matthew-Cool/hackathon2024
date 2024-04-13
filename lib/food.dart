import 'package:flutter/cupertino.dart';
import 'package:hackathon_app/Custom%20Widgets/foodItem.dart';
import 'package:hackathon_app/foodtips.dart';

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
        trailing: CupertinoButton(
        child: const Icon(CupertinoIcons.forward),
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
      )
    );
  }
}

List<FoodItemData> foodItems = [
  FoodItemData(food: "Pizza", calories: 300),
  FoodItemData(food: "Burger", calories: 600),
  FoodItemData(food: "Grilled Cheese", calories: 350),
  FoodItemData(food: "Fried Chicken", calories: 400),
  FoodItemData(food: "Pasta", calories: 400),
  FoodItemData(food: "Salad", calories: 200),
  FoodItemData(food: "Steak", calories: 700),
  FoodItemData(food: "Sushi", calories: 400),
  FoodItemData(food: "Tacos", calories: 300),
  FoodItemData(food: "Soup", calories: 150),
  FoodItemData(food: "Sandwich", calories: 300),
  FoodItemData(food: "Macaroni and Cheese", calories: 400),
  FoodItemData(food: "Mashed Potatoes", calories: 250),
  FoodItemData(food: "Waffles", calories: 350),
  FoodItemData(food: "Pancakes", calories: 250),
  FoodItemData(food: "Omelette", calories: 300),
  FoodItemData(food: "Fruit Salad", calories: 150),
  FoodItemData(food: "Smoothie", calories: 200),
  FoodItemData(food: "Yogurt", calories: 150),
  FoodItemData(food: "Bagel", calories: 250),
  FoodItemData(food: "Cereal", calories: 200),
  FoodItemData(food: "Toast", calories: 100),
  FoodItemData(food: "Eggs", calories: 70),
  FoodItemData(food: "Cheese", calories: 100),
  FoodItemData(food: "Chicken Breast", calories: 150),
  FoodItemData(food: "Rice", calories: 200),
  FoodItemData(food: "Fish", calories: 200),
  FoodItemData(food: "Shrimp", calories: 150),
  FoodItemData(food: "Hamburger", calories: 400),
  FoodItemData(food: "Hot Dog", calories: 250),
  FoodItemData(food: "French Fries", calories: 300),
  FoodItemData(food: "Onion Rings", calories: 350),
  FoodItemData(food: "Popcorn", calories: 100),
  FoodItemData(food: "Nachos", calories: 400),
  FoodItemData(food: "Chicken Wings", calories: 400),
  FoodItemData(food: "Cupcake", calories: 200),
  FoodItemData(food: "Brownie", calories: 250),
  FoodItemData(food: "Ice Cream", calories: 250),
  FoodItemData(food: "Donut", calories: 300),
  FoodItemData(food: "Cookies", calories: 150),
  FoodItemData(food: "Pudding", calories: 200),
  FoodItemData(food: "Pie", calories: 300),
  FoodItemData(food: "Cake", calories: 400),
  FoodItemData(food: "Muffin", calories: 250),
  FoodItemData(food: "Apple", calories: 50),
  FoodItemData(food: "Banana", calories: 100),
  FoodItemData(food: "Orange", calories: 70),
  FoodItemData(food: "Strawberries", calories: 50),
  FoodItemData(food: "Grapes", calories: 80),
  FoodItemData(food: "Carrot", calories: 30),
  FoodItemData(food: "Celery", calories: 10),
  FoodItemData(food: "Broccoli", calories: 30),
  FoodItemData(food: "Cucumber", calories: 15),
  FoodItemData(food: "Tomato", calories: 20),
  FoodItemData(food: "Lettuce", calories: 5),
  FoodItemData(food: "Spinach", calories: 10),
  FoodItemData(food: "Almonds", calories: 150),
  FoodItemData(food: "Peanuts", calories: 200),
  FoodItemData(food: "Cashews", calories: 170),
  FoodItemData(food: "Walnuts", calories: 180),
  FoodItemData(food: "Sunflower Seeds", calories: 160),
  FoodItemData(food: "Peanut Butter", calories: 200),
  FoodItemData(food: "Avocado", calories: 150),
  FoodItemData(food: "Olives", calories: 50),
];

class FoodItemData {
  final String food;
  final double calories;

  FoodItemData({required this.food, required this.calories});
}
