import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTitle;
  Question(this.questionTitle);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(questionTitle, style: TextStyle(fontSize: 30, color:Colors.blue),),
      ),
    );
  }
}
