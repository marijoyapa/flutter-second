import "package:flutter/material.dart";
import "package:adv_basics/answer_button.dart";
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(
            answerText: currentQuestions.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestions.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
