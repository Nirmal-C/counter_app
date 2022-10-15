import 'package:counter_app/screens/counterPage1.dart';
import 'package:counter_app/screens/counterPage2.dart';
import 'package:counter_app/screens/counterPage3.dart';
import 'package:counter_app/widgets/bottomNavBar.dart';
import 'package:counter_app/main.dart';
import 'package:counter_app/widgets/topNavbar.dart';
import 'package:flutter/material.dart';

int selectedIndex = 0;

class Home extends StatefulWidget {
  Home(this.stream);
  final Stream<int> stream;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    widget.stream.listen((index) {
      setState(() {
        selectedIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: MytopNav(streamController.stream)),
        body: <Widget>[
          CounterPage1(),
          CounterPage2(),
          CounterPage3(),
        ][selectedIndex],
        bottomNavigationBar: const MyBottomNavbar());
  }
}
