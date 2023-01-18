import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Screens/home_screen.dart';
import 'package:wireframe_flaxen/Screens/menu.dart';
import 'package:wireframe_flaxen/Screens/orders.dart';
import 'package:wireframe_flaxen/Screens/search.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentindex = 0;
  var screens = [
    HomeScreen(),
    SearchScreen(),
    Orders(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentindex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: (_index) {
            setState(() {
              currentindex = _index;
            });
          },
          // elevation: 10,
          items: const [
            BottomNavigationBarItem(
              // activeIcon: Prankpayment(),
              label: 'Home',
              // backgroundColor: Colors.red,
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              // activeIcon: Profile(),
              label: 'Search',
              // backgroundColor: Colors.amber,
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              // activeIcon: ListView(),
              label: 'Orders',
              // backgroundColor: Colors.cyanAccent,
              icon: Icon(
                Icons.card_travel,
              ),
            ),
            BottomNavigationBarItem(
              // activeIcon: Prankpayment(),
              label: 'Menu',
              // backgroundColor: Colors.red,
              icon: Icon(Icons.menu),
            ),
          ],
          currentIndex: currentindex,
        ));
  }
}
