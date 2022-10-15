import 'package:flutter/material.dart';

class CounterPage2 extends StatefulWidget {
  const CounterPage2({Key? key}) : super(key: key);

  @override
  State<CounterPage2> createState() => _CounterPage2State();
}

class _CounterPage2State extends State<CounterPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar: ,

      body: Text("Counter 2"),
    );
  }
}
