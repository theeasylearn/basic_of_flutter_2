import 'package:flutter/material.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';
import 'card_demo.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
            child: Container(
                padding: EdgeInsets.all(10),
                color: Color(0xAAFBFCFA),
                alignment: Alignment.center,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              SizedBox(
                                  height: 200,
                                  width:  200,
                                  child: Card(
                                      elevation: 10,
                                      color: Color(0xaaFFFADA),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FittedBox(child: Text("Flutter")),
                                      ),
                                  ),
                              ),
                              SizedBox(
                                  height: 200,
                                  width:  200,
                                  child: Card(
                                      elevation: 10,
                                      color: Color(0xaaFFFADA),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FittedBox(child: Text("MERN Stack")),
                                      ),
                                  ),
                              ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              SizedBox(
                                  height: 200,
                                  width:  200,
                                  child: Card(
                                      elevation: 10,
                                      color: Color(0xaaFFFADA),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FittedBox(
                                          child: Text("AI/ML"),
                                        ),
                                      ),
                                  ),
                              ),
                              SizedBox(
                                  height: 200,
                                  width:  200,
                                  child: Card(
                                      elevation: 10,
                                      color: Color(0xaaFFFADA),
                                      child: Image.network("https://picsum.photos/150/150",
                                      fit: BoxFit.cover,),
                                  ),
                              ),
                          ],
                        ),
                    ],
                ),
            ),
        ),
    );
  }
}

void main() {
  // runApp(Column_Demo_1());
  // runApp(Column_Row_Demo_1());
  // runApp(Column_row_Demo_2());
  // runApp(CardDemo1());
  runApp(SizedBoxDemo());
}
