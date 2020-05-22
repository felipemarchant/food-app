import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/data/food_data.dart';
import 'package:foodapp/src/widget/bought_foods.dart';
import 'package:foodapp/src/widget/food_category.dart';
import 'package:foodapp/src/widget/home_top_info.dart';
import 'package:foodapp/src/widget/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          FoodSection(),
          SizedBox(height: 20.0,),
          Column(
            children: _foods.map(_buildFoodItem).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        price: food.price,
        discount: food.discount,
        imagePath: food.imagePath,
        category: food.category,
        ratings: food.ratings,
      ),
    );
  }
  Widget FoodSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Frequently Bought Foods",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        GestureDetector(
          onTap: () {},
          child: Text("View All",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
        ),
      ],
    );
  }
}