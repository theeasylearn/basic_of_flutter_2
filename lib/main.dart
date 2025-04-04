import 'package:flutter/material.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';
class CardDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
            child: Center(
              child: SizedBox(
                height: 450,
                child: Card(
                    color: Colors.white,
                    elevation: 06,
                    child: Column(
                      children: [
                          ListTile(
                            title: Text("IPhone 16 pro max"),
                            subtitle: Text("Build for apple intelligence"),
                            trailing: Icon(Icons.bookmark),
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: Image.network(
                                "https://picsum.photos/800/600",
                                fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text("The iPhone 16 Pro Max redefines smartphone innovation with its sleek titanium design, "
                                "ultra-responsive 6.9-inch Super Retina XDR display, and the powerful A18 Pro chip. "
                                "Engineered for performance and efficiency, it delivers lightning-fast speed and advanced AI capabilities. "
                                "The quad-camera system features a 48MP main lens, 10x optical zoom, and enhanced Night mode, "
                                "offering pro-level photography. "),
                          ),
                          OverflowBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                                ElevatedButton(onPressed: () {}, child: Text("Add to cart")),
                                SizedBox(width: 10,),
                                ElevatedButton(onPressed: () {}, child: Text("Add to wishlist")),
                            ],
                          )
                      ],
                    ),
                ),
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
  runApp(CardDemo1());
}
