import 'package:basic_of_flutter_2/sliver_demo.dart';
import 'package:basic_of_flutter_2/wrap_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';
import 'card_demo.dart';
import 'sizebox_demo.dart';
import 'ascpect_ratio_demo.dart';
import 'list_view_demo_1.dart';
import 'list_view_demo_2.dart';
import 'grid_view_demo_1.dart';
import 'layout_builder_demo.dart';
import 'media_query_demo.dart';

class ButtonDemo extends StatefulWidget {

  //stateful class must Override createState method which must Return object of the class which extend State class
  @override
  State<ButtonDemo> createState() {
    //create object of _ButtonDemoState class
    _ButtonDemoState object = new _ButtonDemoState();
    return object;
  }
}

//put your ui into below class which extends State class
class _ButtonDemoState extends State<ButtonDemo> {
  String CurrentDate = "Display Current Date";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button demo"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                MaterialButton(
                    child: Text("Material Button example"),
                    onPressed: () {
                        //annonymus function
                        //code in this method will execute when user press button
                        print("Button Clicked....");
                    }),
                ElevatedButton(onPressed: () {
                  print("Elavated Button Pressed");
                }, child: Text("Elevated Button")),
              // customized Material Button
              MaterialButton(
                  child: Text("Material Button example",
                  style: TextStyle(
                    fontSize: 20,

                  ),),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  onPressed: () {
                    //annonymus function
                    //code in this method will execute when user press button
                    print("indigo Button Clicked....");
                  }),
              //put some gap between button
              SizedBox(height: 10,),
              // material button with Icon
              MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save),
                      SizedBox(width: 5,),
                      Text("Save "),
                    ],
                  ),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    //annonymus function
                    //code in this method will execute when user press button
                    print("redAccent Button Clicked....");
                  }),
              IconButton(onPressed: (){
                print("Icon Button Clicked.....");
              }, icon: Icon(Icons.delete)),
              ElevatedButton(onPressed: () {
                  //create Date class object
                  var today = new DateTime.now();
                  setState(() {
                    CurrentDate = today.day.toString() + "/" + today.month.toString() + "/" + today.year.toString();
                  });
              }, child: Text(CurrentDate)),
            ],
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
  // runApp(SizedBoxDemo());
  // runApp(TableDemo());
  // runApp(AspectRatioEx());
  //runApp(WrapDemo());
  // runApp(ListViewDemo1());
  // runApp(ListViewDemo2());
  // runApp(GridViewDemo1());
  // runApp(BuildContextDemo());
  // runApp(MediaQueryDemo());
  // runApp(SliverDemo1());
  runApp(ButtonDemo());
}
