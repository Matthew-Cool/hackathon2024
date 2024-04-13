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
                        FoodItem(food: foodItem.food, cal: foodItem.cal),
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
  FoodItemData(food: "Pizza", cal: 300),
  FoodItemData(food: "Burger", cal: 600),
  FoodItemData(food: "Grilled Cheese", cal: 350),
  FoodItemData(food: "Fried Chicken", cal: 400),
  FoodItemData(food: "Pasta", cal: 400),
  FoodItemData(food: "Salad", cal: 200),
  FoodItemData(food: "Steak", cal: 700),
  FoodItemData(food: "Sushi", cal: 400),
  FoodItemData(food: "Tacos", cal: 300),
  FoodItemData(food: "Soup", cal: 150),
  FoodItemData(food: "Sandwich", cal: 300),
  FoodItemData(food: "Macaroni and Cheese", cal: 400),
  FoodItemData(food: "Mashed Potatoes", cal: 250),
  FoodItemData(food: "Waffles", cal: 350),
  FoodItemData(food: "Pancakes", cal: 250),
  FoodItemData(food: "Omelette", cal: 300),
  FoodItemData(food: "Fruit Salad", cal: 150),
  FoodItemData(food: "Smoothie", cal: 200),
  FoodItemData(food: "Yogurt", cal: 150),
  FoodItemData(food: "Bagel", cal: 250),
  FoodItemData(food: "Cereal", cal: 200),
  FoodItemData(food: "Toast", cal: 100),
  FoodItemData(food: "Eggs", cal: 70),
  FoodItemData(food: "Cheese", cal: 100),
  FoodItemData(food: "Chicken Breast", cal: 150),
  FoodItemData(food: "Rice", cal: 200),
  FoodItemData(food: "Fish", cal: 200),
  FoodItemData(food: "Shrimp", cal: 150),
  FoodItemData(food: "Hamburger", cal: 400),
  FoodItemData(food: "Hot Dog", cal: 250),
  FoodItemData(food: "French Fries", cal: 300),
  FoodItemData(food: "Onion Rings", cal: 350),
  FoodItemData(food: "Popcorn", cal: 100),
  FoodItemData(food: "Nachos", cal: 400),
  FoodItemData(food: "Chicken Wings", cal: 400),
  FoodItemData(food: "Cupcake", cal: 200),
  FoodItemData(food: "Brownie", cal: 250),
  FoodItemData(food: "Ice Cream", cal: 250),
  FoodItemData(food: "Donut", cal: 300),
  FoodItemData(food: "Cookies", cal: 150),
  FoodItemData(food: "Pudding", cal: 200),
  FoodItemData(food: "Pie", cal: 300),
  FoodItemData(food: "Cake", cal: 400),
  FoodItemData(food: "Muffin", cal: 250),
  FoodItemData(food: "Apple", cal: 50),
  FoodItemData(food: "Banana", cal: 100),
  FoodItemData(food: "Orange", cal: 70),
  FoodItemData(food: "Strawberries", cal: 50),
  FoodItemData(food: "Grapes", cal: 80),
  FoodItemData(food: "Carrot", cal: 30),
  FoodItemData(food: "Celery", cal: 10),
  FoodItemData(food: "Broccoli", cal: 30),
  FoodItemData(food: "Cucumber", cal: 15),
  FoodItemData(food: "Tomato", cal: 20),
  FoodItemData(food: "Lettuce", cal: 5),
  FoodItemData(food: "Spinach", cal: 10),
  FoodItemData(food: "Almonds", cal: 150),
  FoodItemData(food: "Peanuts", cal: 200),
  FoodItemData(food: "Cashews", cal: 170),
  FoodItemData(food: "Walnuts", cal: 180),
  FoodItemData(food: "Sunflower Seeds", cal: 160),
  FoodItemData(food: "Peanut Butter", cal: 200),
  FoodItemData(food: "Avocado", cal: 150),
  FoodItemData(food: "Olives", cal: 50),
];

class FoodItemData {
  final String food;
  final int cal;

  FoodItemData({required this.food, required this.cal});
}
