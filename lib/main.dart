import 'package:flutter/material.dart';
import 'package:myapp/gradient_container.dart';

void main() {
  runApp( MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradiantContainer(const [Colors.lightBlue,Colors.white])
        ),
      ));
    }
