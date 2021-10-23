import 'package:basic_quiz_app/quit.dart';
import 'package:flutter/material.dart';
import './reset.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  final Function quitHandler;

  Result({this.score, this.resetHandler, this.quitHandler});

  String get resultPhrase {
    var resultText;

    if (score < 20) {
      resultText =
          '🤦‍♂️🤦‍♂️I expected a lot more than $score points from you!🤦‍♂️🤦‍♂️';
    } else if (score < 40) {
      resultText = '🤞🤞Surely, you can do better than $score points 🤞🤞';
    } else if (score == 50) {
      resultText =
          '🔥You are awesome, only a select few get the total $score points!!🔥';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 100),
          child: Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Reset(resetHandler),
        Quit(quitHandler),
      ],
    ));
  }
}
