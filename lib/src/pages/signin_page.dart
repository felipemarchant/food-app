import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _passwordShow = false;

  Widget EmailFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your email or username",
        hintStyle: TextStyle(color: Color(0XFFBDC2CB), fontSize: 18.0),
      ),
    );
  }

  Widget PasswordFormField() {
    return TextFormField(
      obscureText: !_passwordShow,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Color(0XFFBDC2CB), fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: () => setState(() => _passwordShow = !_passwordShow),
          icon: _passwordShow ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sign In", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,),),
              SizedBox(height: 100.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Forgotten Password?", style: TextStyle(fontSize: 18.0, color: Colors.blueAccent, fontWeight: FontWeight.bold,),),
                ],
              ),
              SizedBox(height: 10.0,),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      EmailFormField(),
                      SizedBox(height: 20.0,),
                      PasswordFormField(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text("Sing In", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                ),
              ),
              Divider(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?", style: TextStyle(color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold, fontSize: 18.0,),),
                  SizedBox(width: 10.0,),
                  Text("Sign Up", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18.0,),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
