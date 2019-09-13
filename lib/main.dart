import 'package:flutter/material.dart';

import 'package:material_calculator/Pages/home.dart';

import 'package:material_calculator/Caclulators/RPN/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _getRoute,
    );
  }

  Route _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/Calculators/RPN":
        return _buildRoute(settings, new RPNHomePage());
    }
    return _buildRoute(settings, new CalculatorSelection());
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
