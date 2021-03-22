import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:user_librartapp/constants/color_constant.dart';
import 'package:user_librartapp/screens/home_screen.dart';
import 'package:user_librartapp/screens/profile_Screen.dart';
import 'package:user_librartapp/screens/scanner_and_reservation.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          labels: ["Home", "Scanner", "Profile"],
          initialSelectedTab: "Home",
          tabIconColor: Colors.black45,
          tabSelectedColor: Colors.red,
          onTabItemSelected: (int value) {
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [Icons.home, Icons.qr_code_scanner_sharp, Icons.person],
          textStyle: TextStyle(color: Colors.red),
        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            HomeScreen(),
            ScannerAndReservation(),
            ProfileScreen(),
          ],
        ));
  }
}
