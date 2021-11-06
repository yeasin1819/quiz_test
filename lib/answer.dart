import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ansOption;
  final VoidCallback changeQuestion;

  Answer(this.ansOption, this.changeQuestion);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: RaisedButton(color: Colors.white,
          child: Text(ansOption, style: TextStyle(fontSize: 25, color:Colors.green),),
          onPressed: changeQuestion,
        ),
      ),
    );
  }
}
