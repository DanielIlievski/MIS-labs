import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {

  final String question;

  const ClothesQuestion({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue[700],
          fontSize: 20.0,
        ),
      ),
    );
  }
}
