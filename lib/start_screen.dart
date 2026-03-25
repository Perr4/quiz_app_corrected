import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startSQuiz, {super.key});

final void Function() startSQuiz;
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/image.png',
           width: 300),
          const Text("The Quizz Start"),
           OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: startSQuiz,
            label: Text(
              "Start",
              style: TextStyle(fontSize: 24,
               color: Color.fromARGB(255, 255, 255, 255)),
            ),
            
          ),
        ],
      ),
    );
  }
}

void onclick() {}
