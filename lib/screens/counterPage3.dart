import 'package:flutter/material.dart';

class CounterPage3 extends StatefulWidget {
  const CounterPage3({Key? key}) : super(key: key);

  @override
  State<CounterPage3> createState() => _CounterPage3State();
}

class _CounterPage3State extends State<CounterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar: ,

      body: Text("Counter 3"),
    );
  }
}
