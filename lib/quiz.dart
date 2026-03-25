import 'package:flutter/material.dart';
import 'package:quiz_app_corrected/question.dart';
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
  
@override
void initState(){ 
   activeScreen = StartScreen(switchState);
    super.initState();

  
}



  void switchState() {
    setState(() {
      activeScreen =  Question();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.white]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
