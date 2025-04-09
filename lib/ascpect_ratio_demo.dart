import 'package:flutter/material.dart';
class AspectRatioEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Example of Aspect"
          ""
          ""
          "Radio",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aspect ratio example"),
        ),
        body: Material(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
                children: [
                  Positioned(
                    child: AspectRatio(
                      aspectRatio: 3/2,
                      child: Image.asset('images/bird2.webp'),),
                  ),
                  Positioned(
                      left:0,
                      bottom: 0,
                      child: Container(
                        height: 50,
                        width: 600,
                        alignment: Alignment.center,
                        color: Color(0xAAFFFFff),
                        child: Text("Wild life in afferica",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24
                          ),)   ,
                      )
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}