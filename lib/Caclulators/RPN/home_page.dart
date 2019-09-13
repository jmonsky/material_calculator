import 'package:flutter/material.dart';
import 'package:material_calculator/Caclulators/RPN/Keyboard/keyboard.dart';
import 'package:material_calculator/Caclulators/RPN/entry.dart';
import 'package:material_calculator/Caclulators/RPN/rpn_card.dart';

class RPNHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RPNHomePageState();
  }
}

class _RPNHomePageState extends State<RPNHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RPN")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: ListView(
              reverse: true,
              children: _buildCardList(),
            ),
          ),
          Keyboard(),
        ],
      ),
    );
  }

  List<Widget> _buildCardList() {
    return <Widget>[
      EntryCard(entry: ScalarEntry(15.0)),
      EntryCard(entry: ScalarEntry(12.0)),
    ];
  }
}
