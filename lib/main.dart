import 'package:flutter/material.dart';

import 'clothes_choice.dart';
import 'clothes_question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var answers = ['answer 1', 'answer 2', 'answer 3', 'answer 4'];
  var questionsAndAnswers = [
    {
      "question": "Shirt",
      "answers": [
        "Classic",
        "Slim fit",
        "Super slim fit",
        "Modern fit",
        "Oversized fit",
      ],
    },
    {
      "question": "Jeans",
      "answers": [
        "Regular fit",
        "Skinny fit",
        "Tapered jeans",
        "Flared jeans",
        "Baggy jeans",
        "Loose fit jeans"
      ],
    },
    {
      "question": "Hat",
      "answers": [
        "Beanie",
        "Fedora",
        "Trilby",
        "Homburg",
        "Beret",
        "Cowboy",
        "Flat cap",
      ],
    },
    {
      "question": "Coat",
      "answers": [
        "Trench coat",
        "Peacoat",
        "Camel coat",
      ],
    },
  ];
  int _questionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (_questionIndex < questionsAndAnswers.length - 1) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose clothes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Choose clothes'),
        ),
        body: Container(
          child: Column(
            children: [
              ClothesQuestion(
                  question: questionsAndAnswers[_questionIndex]['question']
                      .toString()),
              ...(questionsAndAnswers[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return ClothesAnswer(
                  answer: answer,
                  callBack: changeQuestion,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
