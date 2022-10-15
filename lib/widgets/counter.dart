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
        Text(
          "$count",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              onIncremented();
            },
            child: const Text("Increment me!"),
          ),
        )
      ],
    ));
  }
}
