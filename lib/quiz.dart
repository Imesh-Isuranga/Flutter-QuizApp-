import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? presentScreen;

  @override
  void initState() {
    presentScreen =StartScreen(setScreen);
    super.initState();
  }

  void setScreen(){
    setState(() {
      presentScreen = const QuestionScreen();
    });
  }


  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 54, 2, 157),
            Color.fromARGB(221, 53, 7, 95),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: presentScreen,
        ),
      ),
    );
  }
}
