import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  final String answer;
  final Function() callBack;

  const ClothesAnswer({Key? key, required this.answer, required this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
      margin: const EdgeInsets.only(bottom: 5.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callBack,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Text(
          answer,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
