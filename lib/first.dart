import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Opacity(opacity: opacity)
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn Fluttter The Fun Way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_circle_right),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );

    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     Image.asset(
    //       'assets/images/quiz-logo.png',
    //       width: 200,
    //     ),
    //     const SizedBox(
    //       height: 20,
    //     ),
    //     const Text(
    //       'Learn Fluttter The Fun Way',
    //       style: TextStyle(
    //         color: Colors.white,
    //       ),
    //     ),
    //     const SizedBox(
    //       height: 20,
    //     ),
    //     TextButton(
    //       onPressed: () {},
    //       style: TextButton.styleFrom(
    //         backgroundColor: Colors.black,
    //         foregroundColor: Colors.white,
    //         textStyle: const TextStyle(fontSize: 20),
    //       ),
    //       child: const Text('What Quiz'),
    //     )
    //   ],
    // );
  }
}
