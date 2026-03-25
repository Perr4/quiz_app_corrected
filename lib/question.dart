
import 'package:flutter/material.dart';

class Question extends StatefulWidget{
  const Question({super.key});

  @override
  State<Question> createState() {
   return _QuestionState();
  }
}

class _QuestionState extends State<Question>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("hello"),);
  }
  
}