import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/questions_summer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.restart,{super.key});

  final List<String> selectedAnswers;

  final void Function() restart;

  List<Map<String, Object>> getSummerData() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summery.add({
        'question_index': i,
        'question': questiondata[i].questionText,
        'answer': questiondata[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }

    return summery;
  }

  @override
  Widget build(context) {
    final summeryData = getSummerData();
    final numTotalQuestions = questiondata.length;
    final numCorrectedQuestions = summeryData.where((data) {
      return data['user_answer'] == data['answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered $numCorrectedQuestions out of $numTotalQuestions correctly",
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummery(summeryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restart,
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
