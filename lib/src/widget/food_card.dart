import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0,),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(this.imagePath),
                height: 65.0,
                width: 65.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 20.0,),
                  Text(this.categoryName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,)),
                  Text("${this.numberOfItems} Kinds")
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}