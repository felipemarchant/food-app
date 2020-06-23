import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _passwordShow = false;

  Widget UsernameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(color: Color(0XFFBDC2CB), fontSize: 18.0),
      ),
    );
  }

  Widget EmailFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "E-mail",
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

  Widget ConfirmPasswordFormField() {
    return TextFormField(
      obscureText: !_passwordShow,
      decoration: InputDecoration(
        hintText: "Confirm password",
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
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sign Up", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,),),
              SizedBox(height: 100.0,),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      UsernameFormField(),
                      SizedBox(height: 20.0,),
                      EmailFormField(),
                      SizedBox(height: 20.0,),
                      PasswordFormField(),
                      SizedBox(height: 20.0,),
                      ConfirmPasswordFormField()
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
                  child: Text("Sing Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                ),
              ),
              Divider(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Do you have account?", style: TextStyle(color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold, fontSize: 18.0,),),
                  SizedBox(width: 10.0,),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => SignInPage()
                    )),
                    child: Text("Sign In", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18.0,),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
