import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.data, {super.key});

  final List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((item) {
            return itemForList(
              index: ((item['question_index'] as int) + 1),
              question: item['question'] as String,
              answer: item['user_answer'] as String,
              correct: item['correct_answer'] as String,
              isRight:
                  item['user_answer'] as String == item['correct_answer'] as String,
            );
          }).toList(),
        ),
      ),
    );
  }
}

Widget itemForList({
  required int index,
  required String question,
  required String answer,
  required String correct,
  required bool isRight,
}) {


  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),

    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: isRight?Colors.greenAccent:Colors.redAccent, shape: BoxShape.circle),
          child: Text(index.toString(), style: TextStyle(color: Colors.white)),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                answer,
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(fontSize: 13, color: isRight?Colors.greenAccent:Colors.redAccent),
              ),
              Text(
                correct,
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
