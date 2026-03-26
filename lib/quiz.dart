import 'package:flutter/material.dart';
import 'package:quiz_app_corrected/data/question_data.dart';
import 'package:quiz_app_corrected/question_screen.dart';
import 'package:quiz_app_corrected/result_screen.dart';
import 'package:quiz_app_corrected/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selctedAnswer = [];

  @override 
  void initState() {
    activeScreen = StartScreen(switchState);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selctedAnswer.add(answer);
    if(selctedAnswer.length == Question.length){
      setState(() {
        activeScreen = ResultScreen(restart: switchState,selctedAnswer);
      });
    }
  }

  void switchState(String activescreen) {
    if(activescreen == "result" ){
      setState(() {
      selctedAnswer = [];
      activeScreen = StartScreen(switchState);
    });
    }else{
      setState(() {
      activeScreen = QuestionScreen(chooseAnswer);
    });
    }
    

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 70, 0, 70),
                const Color.fromARGB(255, 109, 63, 128),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
      themeMode: ThemeMode.system,
      
    );
  }
}
