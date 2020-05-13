import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 400.00,
            child: Image.asset("assets/images/breakfast.jpeg", fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Hot Coffe",
                      style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        SizedBox(height: 20.0,),
                        Text("(22 reviews)",
                          style: TextStyle(color: Colors.grey, fontSize: 16.0,),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("22.0",
                      style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent, fontWeight: FontWeight.bold,),),
                    Text("22.0",
                      style: TextStyle(color: Colors.grey,),),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
