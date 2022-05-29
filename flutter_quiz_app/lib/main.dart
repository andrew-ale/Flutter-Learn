import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {
          'text': 'Dog',
          'score': 10,
        },
        {
          'text': 'Cat',
          'score': 5,
        },
        {
          'text': 'Rabbit',
          'score': 3,
        },
        {
          'text': 'Hamster',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answer': [
        {
          'text': 'C',
          'score': 10,
        },
        {
          'text': 'JS',
          'score': 5,
        },
        {
          'text': 'Java',
          'score': 3,
        },
        {
          'text': 'HTML',
          'score': 1,
        },
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
