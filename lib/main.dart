import 'package:flutter/material.dart';
import 'package:flutter_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 49, 83, 84),
          Color.fromARGB(255, 51, 50, 49),
        ]),
      ),
    ),
  );
}
