import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_corrected/quiz.dart';
import 'package:quiz_app_corrected/widget/answer_button.dart';
import 'package:quiz_app_corrected/data/question_data.dart';

//Widget con la Schermata delle Domade
class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAnswer, {super.key});

  final Function(String answer) chooseAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var currentQuestion = Question[currentQuestionIndex];

    void answerQuestion(String selctedAnswer) {
      widget.chooseAnswer(selctedAnswer);
         setState(() {
          currentQuestionIndex++;
        });
      
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswer().map((item) {
              return AnswerButton(item, (){
                answerQuestion(item);
                
              });
            }),
          ],
        ),
      ),
    );
  }
}
