import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback buttonHandler;
  final List<Map<String, Object>> listOfMap;
  final int questionIndex;
  Quiz(@required this.buttonHandler, @required this.listOfMap,
      @required this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        listOfMap[questionIndex]['questionText'].toString(),
      ),
      ...(listOfMap[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((anss) {
        return Answer(buttonHandler, anss['text'].toString());
      }).toList(),
    ]);
  }
}
