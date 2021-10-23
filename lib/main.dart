import 'package:basic_quiz_app/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  //variables to maintain the state of the quiz
  var _questionsIndex = 0;
  var _score = 0;
  final _questions = [
    {
      'question': 'What is the tallest Mountain on Earth?',
      'answers': [
        'Mt. Everest',
        'Mt. Kailash',
        'Mt. Tenchu',
        'Mt. Annapurna',
        'Mt. Mansarovar'
      ],
      'correctAnswer': 'Mt. Everest',
    },
    {
      'question': 'Where was Buddha born?',
      'answers': ['India', 'China', 'Mongolia', 'Srilanka', 'Nepal'],
      'correctAnswer': 'Nepal',
    },
    {
      'question': 'How many states are there in U.S.A?',
      'answers': ['45', '50', '65', '55', '70'],
      'correctAnswer': '50',
    },
    {
      'question': 'When did the second world war end?',
      'answers': ['1940', '1945', '1952', '1950', '1942'],
      'correctAnswer': '1945'
    },
    {
      'question': 'Who is known as the father of Computer Science?',
      'answers': [
        'Alan Turing',
        'Robert C. Martin',
        'Charles Babbage',
        'Bill Gates',
        'Steve Jobs'
      ],
      'correctAnswer': 'Charles Babbage',
    },
  ];

//Handler functions
  void _answerHandler(answer) {
    setState(() {
      if (_questions[_questionsIndex]['correctAnswer'] == answer) _score += 10;
      print(_score);
      if (_questionsIndex < this._questions.length) _questionsIndex++;
    });
  }

  void _resetHandler() {
    setState(() {
      _questionsIndex = 0;
      _score = 0;
    });
  }

  void _quitHandler() {
    _resetHandler();
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz trivia'),
          backgroundColor: Colors.blueAccent[700],
          elevation: 10,
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                quizQuestions: _questions,
                questionsIndex: _questionsIndex,
                answerHandler: _answerHandler)
            : Result(
                score: _score,
                resetHandler: _resetHandler,
                quitHandler: _quitHandler,
              ),
      ),
    );
    //throw UnimplementedError();
  }
}
