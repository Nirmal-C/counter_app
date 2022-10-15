import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/home.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedFontSize: 15,
        selectedFontSize: 20,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
          streamController.add(index);
        },
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
              icon: Icon(Icons.watch_outlined), label: 'Counter 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: 'Counter 3'),
        ]);
  }
}
