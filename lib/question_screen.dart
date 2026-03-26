import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("question"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text("1 question"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("2 question"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("3 question"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("4 question"),
            ),
          ],
        ),
      ),
    );
  }
}
