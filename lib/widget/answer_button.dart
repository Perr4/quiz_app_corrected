import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.testo, this.onTap, {super.key});

  final String testo;
  final void Function() onTap;


  //Bottone per la selezione delle risposte nella schermata delle domande
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(testo),
    );
  }
}
