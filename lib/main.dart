import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ('Ice'),
        theme: ThemeData(primarySwatch: Colors.brown),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Gelateria Ice'),
          ),
          body: Builder(builder: (BuildContext context) {
            return SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  height: 20,
                ),
                Text('The best icecream'),
                Container(
                  height: 30,
                ),
                Image.network('https://bit.ly/flutgelato'),
                Container(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    SnackBar snackbar = SnackBar(
                        content: Text('My email is: gelatigelati@gelati.it'));
                    Scaffold.of(context).showSnackBar(snackbar);
                  },
                  child: Text('Informazioni'),
                )
              ],
            ));
          }),
        ));
  }
}
