import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: data['correct_answer'] == data['user_answer']
                        ? const Color.fromARGB(255, 54, 148, 196)
                        : const Color.fromARGB(255, 230, 45, 190),
                  ),
                  child: Center(
                      child: Text(
                          ((data['question_index'] as int) + 1).toString())),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        (data['user_answer'] as String),
                        style: const TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        (data['correct_answer'] as String),
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white38),
                      )
                    ],
                  ),
                ),
              ]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
