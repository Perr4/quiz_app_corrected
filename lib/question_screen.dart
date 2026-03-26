import 'package:flutter/material.dart';
import 'package:quiz_app_corrected/widget/answer_button.dart';
import 'package:quiz_app_corrected/data/question_data.dart';

//Widget con la Schermata delle Domade
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  final currentQuestion = Question[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion.text,textAlign: TextAlign.center),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswer().map((item){
              return AnswerButton(item,(){});
              })
          ],
        ),
      ),
    );
  }
}
