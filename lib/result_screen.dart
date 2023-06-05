import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers, //named arguments
  });

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'you ans x out of 20',
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'List of ans and quiz',
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
