import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_corrected/data/question_data.dart';
import 'package:quiz_app_corrected/start_screen.dart';
import 'package:quiz_app_corrected/widget/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswer, {super.key,required this.restart});

  final List<String> chosenAnswer;
  final void Function(String) restart;

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
    final sumData =getSummaryData();
    final numTotalQuestion = Question.length;
    final numCorectQuestion = sumData.where((item){
        return item['correct_answer'] == item['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("You answered right $numCorectQuestion out of $numTotalQuestion",style: GoogleFonts.inter(
                fontSize: 25,color: Colors.white
              )),
            SizedBox(
              height: 30,
            ),
           QuestionSummary(sumData),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: (){
                restart("result");
              },
              label: Text("Restart"),
              icon: Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
