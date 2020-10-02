import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Snackbar Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Snackbar Example"),
          ),
          body: SnackbarPage(),
        ));
  }
}

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
        color: Colors.teal,
        onPressed: () {
          SnackBar snackbar = new SnackBar(
            content: Text("Snackbar Show Here"),
            action: SnackBarAction(label: "Undo", onPressed: () {}),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text(
          "Show Snackbar",
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
