import 'package:flutter/material.dart';

class MytopNav extends StatelessWidget {
  const MytopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'Counter 1',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        )));
  }
}
