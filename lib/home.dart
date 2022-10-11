import 'package:counter_app/widgets/bottomNavBar.dart';
import 'package:counter_app/widgets/topNavbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70.0), child: MytopNav()),
        body: Container(),
        bottomNavigationBar: const MyBottomNavbar());
  }
}
