import 'package:counter_app/widgets/counter.dart';
import 'package:flutter/material.dart';

class CounterPage2 extends StatefulWidget {
  const CounterPage2({super.key});

  @override
  State<CounterPage2> createState() => _CounterPage2State();
}

class _CounterPage2State extends State<CounterPage2> {
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
