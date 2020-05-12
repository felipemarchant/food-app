import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/widget/food_category.dart';
import 'package:foodapp/src/widget/home_top_info.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
        ],
      ),
    );
  }
}