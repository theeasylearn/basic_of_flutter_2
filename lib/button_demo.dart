import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        floatingActionButton: MaterialButton(
            color: Colors.indigo,
            textColor: Colors.white,
            onPressed: () {
              print("Display message button clicked...");
              Fluttertoast.showToast(
                msg: "Display message button clicked...",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.black,
                textColor: Colors.white,
              );
            },
            child: Text("Display message")),
      ),
    );
  }
}