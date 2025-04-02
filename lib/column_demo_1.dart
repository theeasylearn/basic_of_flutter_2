import 'package:flutter/material.dart';
class Column_Demo_1 extends StatelessWidget {
  const Column_Demo_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text("First Column",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text("Second Column",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Text("Third Column",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
