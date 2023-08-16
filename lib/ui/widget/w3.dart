import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.update});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  final double value;
  final Function(double) update;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$value', key: Key('W3Value')),
        IconButton(
          onPressed: add,
          icon: Icon(Icons.add),
          key: Key('W3Add'),
        ),
        IconButton(onPressed: sub, icon: Icon(Icons.remove), key: Key('W3Sub'))
      ],
    );
    ;
  }

  void add() {
    double x = value + 1;
    update(double.parse(x.toStringAsFixed(1)));
  }

  void sub() {
    double x = value - 1;
    update(double.parse(x.toStringAsFixed(1)));
  }
}
