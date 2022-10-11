import 'package:flutter/material.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedFontSize: 15,
        selectedFontSize: 20,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        iconSize: 38,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade500,
        backgroundColor: Colors.white,
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.punch_clock,
            ),
            label: 'Counter 1',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.punch_clock), label: 'Counter 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.punch_clock), label: 'Counter 3'),
        ]);
  }
}
