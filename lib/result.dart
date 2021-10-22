import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          'You did it!!!',
          style: TextStyle(
            color: Colors.redAccent[700],
            fontSize: 40,
            fontFamily: 'RobotoMono',
          ),
          textAlign: TextAlign.center,
        ));
  }
}
