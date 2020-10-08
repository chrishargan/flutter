import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter is Cool!'),
          leading: new Icon(Icons.add_location_alt_outlined),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.sd_card),
              tooltip: 'Hey!',
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.pie_chart),
              tooltip: 'Wow',
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.photo_album),
              tooltip: 'Snap!',
              onPressed: () => {},
            ),
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance), label: "Bank"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.apps), label: "Apps"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_basket), label: "Shop"),
        ]),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new TextField(
                decoration: new InputDecoration(
                    border: InputBorder.none, hintText: 'Enter text here'),
              ),
              new Checkbox(
                value: true,
                onChanged: (bool value) {
                  // This is where to enter your function for what happens if state is changed
                },
              ),
              new Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: (_) {},
              ),
              new Switch(
                value: false,
                onChanged: (bool value) {},
              ),
              new ButtonBar(mainAxisSize: MainAxisSize.min, children: <Widget>[
                new RaisedButton(
                  child: const Text('Raised'),
                  onPressed: () {},  // This means it is actively pressable although currently empty
                ),
                const RaisedButton(
                    child: const Text('Disabled'),
                    onPressed: null, // Null disables the button
                )
              ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Flat'),
                      onPressed: () {},
                  ),
                  const FlatButton(
                      child: const Text('Disabled'),
                      onPressed: null, )
                ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new OutlineButton(
                    child: const Text('Outline'),
                    onPressed: () {},
                  ),
                  const RaisedButton(     // in the case of outline the disabled version doesn't
                                          // look different so use a raised with null value
                    child: const Text('Disabled'),
                    onPressed: null, )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
