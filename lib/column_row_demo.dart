import 'package:flutter/material.dart';

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