import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   Counter({super.key, required this.count});

//   int count = 0;

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   void increment(int count) {
//     setState(() {
//       widget.count += 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     String countervalue = widget.count.toString();
//     return ElevatedButton(
//         onPressed: () {
//           increment(widget.count);
//         },
//         child: Text("$countervalue"));
//   }
// }

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
