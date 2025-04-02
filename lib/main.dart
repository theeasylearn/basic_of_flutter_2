import 'package:flutter/material.dart';
import 'column_demo_1.dart';
class Column_Row_Demo_1 extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Icon(Icons.star),
                        Icon(Icons.home),
                        Icon(Icons.star),
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Icon(Icons.star),
                        Icon(Icons.home),
                        Icon(Icons.star),
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Icon(Icons.star),
                        Icon(Icons.home),
                        Icon(Icons.star),
                    ],
                ),
              ],
          ),
        ),
    );
  }
}

void main() {
  // runApp(Column_Demo_1());
  runApp(Column_Row_Demo_1());
}
