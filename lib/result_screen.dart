import 'package:flutter/material.dart';
import 'package:quiz_app_corrected/data/question_data.dart';
import 'package:quiz_app_corrected/widget/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswer, {super.key});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> sumary = [];

    for (int i = 0; i < chosenAnswer.length; i++) {
      sumary.add({
        'question_index': i,
        'question': Question[i].text,
        'correct_answer': Question[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return sumary;
  }

  @override
  Widget build(BuildContext context) {
    final listaFinale = getSummaryData();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("You endedn the question"),
            SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...listaFinale.map((item) {
                    return Text(item[0].toString());
                  }),
                  QuestionSummary()
                ],
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text("Restart"),
              icon: Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
