import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answers, this.onTap, {super.key});

  final String answers;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        foregroundColor: Colors.white,
        backgroundColor:const Color.fromARGB(137, 0, 1, 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answers),
    );
  }
}
