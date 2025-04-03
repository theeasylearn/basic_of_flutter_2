import 'package:flutter/material.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';

class Column_row_Demo_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("IPhone 16 pro max"),
                )),
            Expanded(
                flex: 5,
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("we will display Image here"))),
            Expanded(
                flex: 5,
                child: Text("we will display product description here")),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Add to cart"))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Add to wishlist")))
                  ],
                ))
          ])),
    );
  }
}

void main() {
  // runApp(Column_Demo_1());
  // runApp(Column_Row_Demo_1());
  runApp(Column_row_Demo_2());
}
