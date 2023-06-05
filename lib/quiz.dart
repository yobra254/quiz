import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/first.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = first(switchScreen);
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? first(switchScreen)
    //     : const QuestionsScreen(); or

    Widget screenWidget = first(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
      );
    }

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
          // child: activeScreen == 'start-screen'
          //     //an if statement
          //     ? first(switchScreen)
          //     : const QuestionsScreen(), or
          child: screenWidget,
        ),
      ),
    );
  }
}
