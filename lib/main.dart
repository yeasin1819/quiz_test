import 'package:flutter/material.dart';
import 'package:quiz_test/question.dart';
import 'package:quiz_test/answer.dart';

int main() {
  runApp(HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIdx = 0;
  int totalScore = 0;
  var questionList = [
    {
      'questionTitle': '1. Which number system has a base 16',
      'answer': ['Hexadecimal','Octal','Binary','Decimal'],
      'score': 2,
    },
    {
      'questionTitle': '2.  What is a digital-to-analog converter?',
      'answer': ['It stores digital data on the computer.',
      'It converts alternating current (AC) into direct current (DC).',
      'It converts electrical power into mechanical power.',
      'It takes the digital data from an audio CD and converts it to a useful form.'
      ],
      'score': 3
    },
    {
      'questionTitle': '3.  How many bits are needed to store one BCD digit?',
      'answer': ['2 bits','4 bits','3 bits','1 bit'],
      'score': 1
    },
     {
      'questionTitle': '4.  How many bits are needed to store one BCD digit?',
      'answer': ['J = 0, K = 1', 'J = 1, K = 1', 'J = 0, K = 0', 'J = 1, K = 0'],
      'score': 1
    },
     {
      'questionTitle': '5. Which number system has a base 16',
      'answer': ['Hexadecimal','Octal','Binary','Decimal'],
      'score': 2,
    },
    {
      'questionTitle': '6.  What is a digital-to-analog converter?',
      'answer': ['It stores digital data on the computer.',
      'It converts alternating current (AC) into direct current (DC).',
      'It converts electrical power into mechanical power.',
      'It takes the digital data from an audio CD and converts it to a useful form.'
      ],
      'score': 3
    },
    {
      'questionTitle': '7.  How many bits are needed to store one BCD digit?',
      'answer': ['2 bits','4 bits','3 bits','1 bit'],
      'score': 1
    },
     {
      'questionTitle': '8.  How many bits are needed to store one BCD digit?',
      'answer': ['J = 0, K = 1', 'J = 1, K = 1', 'J = 0, K = 0', 'J = 1, K = 0'],
      'score': 1
    },
     {
      'questionTitle': '9. Which number system has a base 16',
      'answer': ['Hexadecimal','Octal','Binary','Decimal'],
      'score': 2,
    },
    {
      'questionTitle': '10.  What is a digital-to-analog converter?',
      'answer': ['It stores digital data on the computer.',
      'It converts alternating current (AC) into direct current (DC).',
      'It converts electrical power into mechanical power.',
      'It takes the digital data from an audio CD and converts it to a useful form.'
      ],
      'score': 3
    },
    {
      'questionTitle': '11.  How many bits are needed to store one BCD digit?',
      'answer': ['2 bits','4 bits','3 bits','1 bit'],
      'score': 1
    },
     {
      'questionTitle': '12.  How many bits are needed to store one BCD digit?',
      'answer': ['J = 0, K = 1', 'J = 1, K = 1', 'J = 0, K = 0', 'J = 1, K = 0'],
      'score': 1
    },
     {
      'questionTitle': '13. Which number system has a base 16',
      'answer': ['Hexadecimal','Octal','Binary','Decimal'],
      'score': 2,
    },
    {
      'questionTitle': '14.  What is a digital-to-analog converter?',
      'answer': ['It stores digital data on the computer.',
      'It converts alternating current (AC) into direct current (DC).',
      'It converts electrical power into mechanical power.',
      'It takes the digital data from an audio CD and converts it to a useful form.'
      ],
      'score': 3
    },
    {
      'questionTitle': '15.  How many bits are needed to store one BCD digit?',
      'answer': ['2 bits','4 bits','3 bits','1 bit'],
      'score': 1
    },
     {
      'questionTitle': '16.  How many bits are needed to store one BCD digit?',
      'answer': ['J = 0, K = 1', 'J = 1, K = 1', 'J = 0, K = 0', 'J = 1, K = 0'],
      'score': 1
    },
     {
      'questionTitle': '17. Which number system has a base 16',
      'answer': ['Hexadecimal','Octal','Binary','Decimal'],
      'score': 2,
    },
    {
      'questionTitle': '18.  What is a digital-to-analog converter?',
      'answer': ['It stores digital data on the computer.',
      'It converts alternating current (AC) into direct current (DC).',
      'It converts electrical power into mechanical power.',
      'It takes the digital data from an audio CD and converts it to a useful form.'
      ],
      'score': 3
    },
    {
      'questionTitle': '19.  How many bits are needed to store one BCD digit?',
      'answer': ['2 bits','4 bits','3 bits','1 bit'],
      'score': 1
    },
     {
      'questionTitle': '20.  How many bits are needed to store one BCD digit?',
      'answer': ['J = 0, K = 1', 'J = 1, K = 1', 'J = 0, K = 0', 'J = 1, K = 0'],
      'score': 1
    },
  ];

  void changeQuestion() {
    setState(() {
      totalScore +=  questionList[questionIdx]['score'] as int;
      questionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Quiz Test",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz Test"),
            centerTitle: true,
          ),
          body: questionIdx < questionList.length
              ? Column(
                  children: [
                    Question(
                        questionList[questionIdx]['questionTitle'] as String),
                    ...(questionList[questionIdx]['answer'] as List<String>)
                        .map((answOption) {
                      return Answer(answOption, changeQuestion);
                    }).toList()
                  ],
                )
              : Center(child: Text("Your Obtained Mark $totalScore", style: TextStyle(fontSize: 35, color:Colors.blue))),
        ));
  }
}
