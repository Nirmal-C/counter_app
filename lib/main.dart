import 'package:flutter/material.dart';
import 'package:counter_app/home.dart';
import 'dart:async';

StreamController<int> streamController = StreamController<int>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(streamController.stream),
    );
  }
}
