import 'package:flutter/material.dart';
import 'package:user_librartapp/screens/login_Screen.dart';
import 'package:user_librartapp/screens/register_screen.dart';
import './constants/color_constant.dart';
import './screens/home_screen.dart';
import 'screens/tab_bar.dart';
import 'screens/profile_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: kMainColor,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      home: TabBarScreen(),
      routes: {
        HomeScreen.route: (_) => new HomeScreen(),
        ProfileScreen.route: (_) => new ProfileScreen(),
        LoginScreen.route: (_) => new LoginScreen(),
        RegisterScreen.route: (_) => new RegisterScreen(),
      },
    );
  }
}
