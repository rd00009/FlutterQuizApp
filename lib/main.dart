import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _listOfQuestions = const [
    {
      'questionText': '1. What is your Name?',
      'answers': [
        {'text': 'John', 'score': 5},
        {'text': 'Mark', 'score': 10},
        {'text': 'John', 'score': 15},
      ]
    },
    {
      'questionText': '2. What is your Age?',
      'answers': [
        {'text': '21', 'score': 2},
        {'text': '25', 'score': 4},
        {'text': '30', 'score': 5},
      ]
    },
    {
      'questionText': '3. What is your City?',
      'answers': [
        {'text': 'Washington', 'score': 10},
        {'text': 'NY', 'score': 20},
      ]
    }
  ];

  var _totalScore = 0;
  void _answerQuestion() {
    // int score
    // _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _listOfQuestions.length) {
      // ignore: avoid_print
      print('We do not have any question!');
    }
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
          backgroundColor: Colors.blueAccent,
        ),
        // ignore: deprecated_member_use
        body: _questionIndex < _listOfQuestions.length
            ? Quiz(_answerQuestion, _listOfQuestions, _questionIndex)
            : Result(resetQuiz),
      ),
    );
  }
}
