import 'package:flutter/material.dart';
import 'package:quiz/first.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 46, 188, 55),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 46, 93, 188),
                Color.fromARGB(255, 119, 81, 195),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const first(),
        ),
      ),
    ),
  );
}
