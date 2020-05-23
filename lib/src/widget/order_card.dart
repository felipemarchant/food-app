import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {

  Color colorCtlQty = Color(0xFFD3D3D3);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: colorCtlQty,),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                      child: Icon(Icons.keyboard_arrow_up, color: colorCtlQty,),
                      onTap: () {}
                  ),
                  Text("0", style: TextStyle(fontSize: 18.0),),
                  InkWell(
                      child: Icon(Icons.keyboard_arrow_down, color: colorCtlQty,),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/lunch.jpeg"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0.0,5.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
