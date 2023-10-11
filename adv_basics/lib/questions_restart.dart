import 'package:flutter/material.dart';

class QuestionRestart extends StatefulWidget {
  const QuestionRestart({super.key});

  @override
  State<QuestionRestart> createState(){
    return _QuestionRestart();
  }
}

class _QuestionRestart extends State<QuestionRestart>{


  @override
  Widget build(context) {
    return OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.refresh_outlined),
              label: const Text('Restart Quiz'),
            );
  }
}