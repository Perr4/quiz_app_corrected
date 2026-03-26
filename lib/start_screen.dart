import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startSQuiz, {super.key});

final void Function() startSQuiz;
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Image.asset('assets/images/image.png',
           width: 300),
           Text("The Quizz Start",style:GoogleFonts.inter(fontSize: 30 ,color: Colors.white,fontWeight: FontWeight.bold),),
           OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            onPressed: startSQuiz,
            label: Text(
              "Start",
              style: GoogleFonts.inter(fontSize: 24,
               color: Color.fromARGB(255, 255, 255, 255)),
            ),
            
          ),
        ],
      ),
    );
  }
}

void onclick() {}
