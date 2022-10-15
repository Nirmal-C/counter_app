import 'package:flutter/material.dart';
import 'package:counter_app/home.dart';

class MytopNav extends StatefulWidget {
  MytopNav(this.stream);
  final Stream<int> stream;

  @override
  State<MytopNav> createState() => _MytopNavState();
}

class _MytopNavState extends State<MytopNav> {
  void initState() {
    super.initState();
    widget.stream.map(
      (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var index = selectedIndex + 1;
    return AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          "Counter $index",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        )));
  }
}
