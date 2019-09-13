import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String _name;
  final String _route;
  final Function _onClear;

  HomeCard(this._name, this._route, this._onClear);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                      child: Text(_name,
                          style: Theme.of(context).textTheme.title)),
                  color: Theme.of(context).primaryColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                        child: Text("Clear"),
                        onPressed: () {},
                        color: Colors.red),
                    FlatButton(
                        child: Text("Info"),
                        onPressed: () {},
                        color: Theme.of(context).primaryColorLight),
                    FlatButton(
                        child: Text("Open"),
                        onPressed: () {
                          Navigator.of(context).pushNamed(_route);
                        },
                        color: Theme.of(context).primaryColor)
                  ],
                )
              ],
            )));
  }
}
