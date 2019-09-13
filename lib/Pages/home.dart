import 'package:flutter/material.dart';
import 'package:material_calculator/Widgets/home_card.dart';

class CalculatorSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculators"),
        ),
        body: ListView(
          children: <Widget>[
            HomeCard("RPN Calculator", "/Calculators/RPN", () {}),
            HomeCard("Graphing Calculator", "/Calculators/Graphing", () {}),
          ],
        ));
  }
}
