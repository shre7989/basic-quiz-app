import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quizQuestions;
  final int questionsIndex;
  final Function answerHandler;

  Quiz(
      {@required this.quizQuestions,
      @required this.questionsIndex,
      @required this.answerHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(quizQuestions[questionsIndex]['question']),
        ...(quizQuestions[questionsIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answer, answerHandler);
        }).toList(),
      ],
    );
  }
}
