import 'package:flutter/material.dart';
import 'my_gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Roll-a-Dice!"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
        ),
        body: const SafeArea(
          child: MyGradient(
            Colors.blue,
            Color.fromARGB(255, 172, 227, 255),
          ),
        ),
      ),
    );
  }
}
