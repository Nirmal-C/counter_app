import 'package:counter_app/widgets/counter.dart';
import 'package:flutter/material.dart';

class CounterPage3 extends StatefulWidget {
  const CounterPage3({super.key});

  @override
  State<CounterPage3> createState() => _CounterPage3State();
}

class _CounterPage3State extends State<CounterPage3> {
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
