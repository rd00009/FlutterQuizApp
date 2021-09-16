import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback callback;
  final String answerText;
  Answer(this.callback, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: callback,
        color: Colors.deepOrange,
        textColor: Colors.white,
      ),
    );
  }
}
