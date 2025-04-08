import 'package:flutter/material.dart';
class TableDemo extends StatelessWidget
{
  //return function-name(arguments)
  Padding PaddedText(String msg)
  {
    return Padding(padding: EdgeInsets.all(10),
      child: Text(msg),);
  }
  TableRow TeamRow(String name,int match, int won, int loss, int points, double nrr)
  {
    return  TableRow(
        children: [
          PaddedText(name),
          PaddedText(match.toString()),
          PaddedText(won.toString()),
          PaddedText(loss.toString()),
          PaddedText(points.toString()),
          PaddedText(nrr.toString()),
        ]
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Table Widget Example",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Table Widget Example"),
        ),
        body: Material(
          child: Table(
            border: TableBorder.all(),
            columnWidths: { 0: FractionColumnWidth(0.40),
              1: FractionColumnWidth(0.12),
              2: FractionColumnWidth(0.12),
              3: FractionColumnWidth(0.12),
              4: FractionColumnWidth(0.12),
              5: FractionColumnWidth(0.12),
            },
            children: [
              TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Team",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Match",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Won",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Loss",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Points",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("N.R.R",style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ]
              ),
              TeamRow("Gujarat Titans",14,12,2,24,2.02),
              TeamRow("Rajasthan Royals",14,10,4,20,1.89),
            ],
          ),
        ),
      ),
    );
  }
}