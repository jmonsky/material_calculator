import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.4, padding: EdgeInsets.all(5.0));
  }
}