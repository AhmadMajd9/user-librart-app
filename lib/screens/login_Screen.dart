import 'package:flutter/material.dart';
import 'package:user_librartapp/constants/color_constant.dart';
import 'package:user_librartapp/screens/home_screen.dart';
import 'package:user_librartapp/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String route = "LoginScreen";
  TextEditingController emilTextEditintController = TextEditingController();
  TextEditingController passwordTextEditintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
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
                  padding: const EdgeInsets.all(20.0),
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
                          controller: emilTextEditintController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "Phone Number ",
                            border: InputBorder.none,
                            labelStyle: TextStyle(fontSize: 15),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot your password?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.route);
                        },
                        color: kMainColor,
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          child: Center(
                            child: Text(
                              'Sign in',
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
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You do not have an account? ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(RegisterScreen.route);
                      },
                      child: Text(
                        " Create an account ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
