import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  Result(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You are completed with the Questions',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
