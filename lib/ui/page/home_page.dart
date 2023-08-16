import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valor = 0.0;
  String squareColor = "79155B";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: reset, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                value: valor,
                update: update,
              ),
              W2(
                color: squareColor,
              ),
              W3(
                value: valor,
                update: update,
              )
            ],
          ),
        ],
      )),
    );
  }

  void update(double value) {
    setState(() {
      valor = value;
      if (value - value.truncate() <= 0.4) {
        squareColor = "79155B";
      } else {
        squareColor = "FFBA86";
      }
    });
  }

  void reset() {
    setState(() {
      valor = 0.0;
    });
  }
}
