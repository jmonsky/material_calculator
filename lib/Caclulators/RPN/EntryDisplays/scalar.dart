import 'package:flutter/material.dart';
import 'package:material_calculator/Caclulators/RPN/entry.dart';

class ScalarDisplay extends StatelessWidget {
  final num _value;
  ScalarDisplay(this._value);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Container(
        child: Text('$_value'),
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      ),
    );
  }
}
