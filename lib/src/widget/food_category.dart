import 'package:flutter/material.dart';
import 'package:foodapp/src/data/category_data.dart';
import 'package:foodapp/src/widget/food_card.dart';

class FoodCategory extends StatelessWidget {

  final _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: this._categories.length,
        itemBuilder: (BuildContext ctx, int idx) => FoodCard (
          categoryName: _categories[idx].categoryName,
          imagePath: _categories[idx].imagePath,
          numberOfItems: _categories[idx].numberOfItems,
        ),
      ),
    );
  }
}