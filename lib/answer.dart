import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          this.answerText,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent[700]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        ),
        onPressed: answerHandler,
      ),
    );
  }
}
