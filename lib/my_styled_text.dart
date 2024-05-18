import 'package:flutter/material.dart';

class MyStyledText extends StatelessWidget {
  const MyStyledText(this.incomingText, {super.key});

  final String incomingText;

  @override
  Widget build(BuildContext context) {
    return Text(
      incomingText,
      style: const TextStyle(color: Colors.white, fontSize: 20,),
    );
  }
}
