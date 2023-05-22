// import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      //Takes the entire space
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(
            answerText: 'Answer Text 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer Text 2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer Text 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
