import 'package:user_librartapp/constants/color_constant.dart';

import '../screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static final route = "RegisterScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Image(
                alignment: Alignment.center,
                image: AssetImage('assets/images/logo.png'),
                width: 250.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "User Name",
                          border: InputBorder.none,
                          labelStyle: TextStyle(fontSize: 15),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelText: "Phone number",
                          labelStyle: TextStyle(fontSize: 15),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: kMainColor,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              fontSize: 19.0,
                              fontFamily: "Schyler",
                            ),
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "you have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(LoginScreen.route);
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
