import 'package:flutter/material.dart';
class SliverDemo1 extends StatelessWidget {
  var Fruits = [
    'Mango',
    'Banana',
    'Guava',
    'Papaya',
    'Pineapple',
    'Jackfruit',
    'Lychee',
    'Pomegranate',
    'Sapota (Chikoo)',
    'Custard Apple',
    'Jamun (Black Plum)',
    'Indian Gooseberry (Amla)',
    'Ber (Indian Jujube)',
    'Tamarind',
    'Fig (Anjeer)',
    'Wood Apple (Bael)',
    'Star Fruit (Carambola)',
    'Kokum',
    'Mulberry',
    'Watermelon',
    'Muskmelon',
    'Apple (Himachal)',
    'Orange (Nagpur)',
    'Grapes',
    'Plum (Aloo Bukhara)'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Example of Sliver"),
            ),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    mainAxisSpacing: 5, crossAxisSpacing: 5, childAspectRatio:3),
                delegate: SliverChildBuilderDelegate((ctx,index){
                  return Container(
                    color: Colors.cyan,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(Fruits[index].toString(),style: TextStyle(
                          color: Colors.white, fontSize: 20
                      ),),
                    ),
                  );
                },childCount: Fruits.length)),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.indigoAccent,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(Fruits[index].toString(),style: TextStyle(
                        color: Colors.white, fontSize: 20
                    ),),
                  ),
                ),
              );
            }, childCount: Fruits.length))
          ],
        )
    );
  }
}