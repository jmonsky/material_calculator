import 'package:flutter/material.dart';
import 'package:material_calculator/Caclulators/RPN/entry.dart';
import 'package:material_calculator/Widgets/tag.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;

  EntryCard({this.entry});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Tag(entry.display.type, entry.display.typeColor),
                    Tag(entry.display.dimension, entry.display.dimensionColor),
                  ],
                ),
                entry.renderer(),
              ],
            )));
  }
}
