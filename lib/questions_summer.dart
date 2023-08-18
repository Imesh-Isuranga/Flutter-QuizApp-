import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget{

  const QuestionSummery(this.summeryData,{super.key});

  final List<Map<String,Object>> summeryData;

  @override
  Widget build(context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(children: summeryData.map((data) { 
          return Row(children: [
            Text(((data['question_index'] as int) +1).toString(),style: const TextStyle(color: Colors.white,fontSize: 15),),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(data['question'] as String,style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 14),),
                  const SizedBox(height: 5,),
                  Text(data['user_answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 81, 106, 249),fontSize: 12),),
                  Text(data['answer'] as String, style: const TextStyle(color: Color.fromARGB(255, 137, 132, 187),fontSize: 12), ),
                  const SizedBox(height: 10,),
                ],),
              ),
            ),
          ]);
        }).toList(),),
      ),
    );
  }

}