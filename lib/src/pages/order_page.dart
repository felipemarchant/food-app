import 'package:flutter/material.dart';
import 'package:foodapp/src/pages/signin_page.dart';

import 'package:foodapp/src/widget/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          TotalContainer()
        ],
      ),
    );
  }

  Widget TotalContainer() {
    return Container(
      height: 220.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0,),
      margin: EdgeInsets.only(top: 20.0,),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: ListTextStyleTotal(color: Colors.grey),),
              Text("23.0",style: ListTextStyleTotal(color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: ListTextStyleTotal(color: Colors.grey),),
              Text("23.0",style: ListTextStyleTotal(color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax", style: ListTextStyleTotal(color: Colors.grey),),
              Text("23.0",style: ListTextStyleTotal(color: Colors.black),),
            ],
          ),
          Divider(height: 40.0, color: Color(0xFFD3D3D3),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: ListTextStyleTotal(color: Colors.grey),),
              Text("23.0",style: ListTextStyleTotal(color: Colors.black),),
            ],
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => SignInPage())
              );
            },
            child: Container(
              width: fullWidth(context),
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text("Proceed to Checkout", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle ListTextStyleTotal({Color color}) {
    return TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: color,);
  }

  double fullWidth(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width;
  }
}
