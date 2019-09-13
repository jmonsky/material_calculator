import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String _label;
  final Color _color;

  Tag(this._label, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        margin: EdgeInsets.symmetric(vertical: 2.0),
        child: Text(_label),
        decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.all(Radius.circular(15.0))));
  }
}
