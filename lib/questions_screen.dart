// import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

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
    final currentQuestion = questions[0];
    return SizedBox(
      //Takes the entire space
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.answer.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }),
          // AnswerButton(
          //   answerText: currentQuestion.answer[0],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answer[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answer[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answer[3],
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
