import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.selectedAnswer,{super.key});

  final void Function(String answer) selectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  int questionnumber = 0;

  void setquestionnumber(String answer){
    widget.selectedAnswer(answer);
    setState(() {
      questionnumber++;
    });
  }

  

  @override
  Widget build(context) {

    final currentquestion = questiondata[questionnumber];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.questionText,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestion.getshuffleList().map((item) {
              return AnswerButton(item, (){
                setquestionnumber(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
