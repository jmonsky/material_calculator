import 'package:flutter/material.dart';
import 'package:material_calculator/Caclulators/RPN/EntryDisplays/scalar.dart';

class Entry {
  num value;
  EntryDisplayData display;
  
  Entry({this.value, this.display});

  Widget renderer (){return null;}
}

class ScalarEntry extends Entry {

  ScalarEntry(num value) : super(value: value, display: EntryDisplayData(
        type: "Scalar",
        typeColor: Colors.green,
        dimension: "(1)",
        dimensionColor: Colors.grey));

  Widget renderer(){
    return new ScalarDisplay(value);
  }
}

class EntryDisplayData {
  String type;
  Color typeColor;
  String dimension;
  Color dimensionColor;

  EntryDisplayData(
      {this.type, this.typeColor, this.dimension, this.dimensionColor});
}
