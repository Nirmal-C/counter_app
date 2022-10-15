import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int count;

  final Function onIncremented;

  const Counter({
    super.key,
    required this.count,
    required this.onIncremented,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("$count"),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {
            onIncremented();
          },
          child: const Text("Increment me!"),
        ),
      ],
    ));
  }
}
