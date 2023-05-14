import 'package:flutter/material.dart';
import 'package:quiz/first.dart';
import 'package:quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = first(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
