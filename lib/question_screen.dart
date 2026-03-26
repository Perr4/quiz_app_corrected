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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(currentQuestion.text),
            const SizedBox(height: 30),
            AnswerButton(currentQuestion.answers[0], () {
              print(currentQuestion.answers[0]);
            }),
            AnswerButton(currentQuestion.answers[1], () {}),
            AnswerButton(currentQuestion.answers[2], () {}),
            AnswerButton(currentQuestion.answers[3], () {}),
          ],
        ),
      ),
    );
  }
}
