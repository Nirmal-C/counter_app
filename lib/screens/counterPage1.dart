import 'package:counter_app/widgets/counter.dart';
import 'package:flutter/material.dart';

class CounterPage1 extends StatefulWidget {
  const CounterPage1({super.key});

  @override
  State<CounterPage1> createState() => _CounterPage1State();
}

class _CounterPage1State extends State<CounterPage1> {
  int _countervalue = 0;
  void _incrementCounter() {
    setState(() {
      _countervalue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
        body: Container(
            child: Container(
          child: Counter(
              count: _countervalue,
              onIncremented: () {
                _incrementCounter();
              }),
        )));
  }
}
