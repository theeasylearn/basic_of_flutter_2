import 'package:flutter/material.dart';
class MediaQueryDemo extends StatelessWidget {
  Widget showColdDrink(parentContainer, ctx) {
    //create cold drink design
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return (SizedBox(
            height: parentContainer.maxHeight,
            width: parentContainer.maxWidth * 0.25,
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset("images/cold_drink.png"),
                    flex: 6,
                  ),
                  Expanded(
                    child: FittedBox(
                      child: Text("Coca cola"),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1 Lt"),
                          Text("Rs 50"),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            )));
      },
      itemCount: 10,
    );
  }
  Widget showCombo(parentContainer,ctx) {
    return Card(
      elevation: 10,
      child: LayoutBuilder(builder: (ctx,parent) {
        return Row(
          children: [
            SizedBox(
              height: parent.maxHeight,
              width: parent.maxWidth * 0.50,
              child: Image.asset('images/combo2.png',height: parent.maxWidth,fit: BoxFit.cover,),
            ),
            SizedBox(
              height: parent.maxHeight,
              width: parent.maxWidth * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 1,
                      child: FittedBox(
                        child: Text("Pizza Lover Combo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                      )),
                  Expanded(
                      flex: 4,
                      child: FittedBox(
                        child: Text(" 1 Medinum Size Pizza \n "
                            "2 Burger \n "
                            "3 500 ml Cold drink \n "
                            "4 garlic bread",
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: parent.maxHeight,
                        color: Colors.red,
                        child: FittedBox(
                          child: Text("Rs 300",style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                      ))
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
  Widget mobileScreen() {
    return LayoutBuilder(builder: (ctx, parent) {
      return Column(
        children: [
          //cold drinks
          Container(
              height: parent.maxHeight * 0.20,
              width: parent.maxWidth,
              child: Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: LayoutBuilder(builder: (ctx, parentContainer) {
                  return showColdDrink(parentContainer, ctx);
                }),
              )),
          //combo
          Container(
              height: parent.maxHeight * 0.40,
              width: parent.maxWidth,
              child: Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: LayoutBuilder(builder: (ctx, parentContainer) {
                  return GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2,
                          crossAxisCount: 2), itemBuilder: (ctx,index){
                    return showCombo(parentContainer, ctx);
                  });
                }),
              )),
          //pizza
          Container(
            height: parent.maxHeight * 0.40,
            width: parent.maxWidth,
            color: Colors.orange,
          )
        ],
      );
    });
  }

  Widget laptopScreen() {
    return LayoutBuilder(builder: (ctx, parent) {
      return Row(
        children: [
          Container(
              width: parent.maxWidth * 0.30,
              height: parent.maxHeight,
              child: Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: LayoutBuilder(builder: (ctx, parentContainer) {
                  return GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2,
                          crossAxisCount: 1), itemBuilder: (ctx,index){
                    return showCombo(parentContainer, ctx);
                  });
                }),
              )
          ),
          SizedBox(
            width: parent.maxWidth * 0.70,
            child: Column(
              children: [
                Container(
                  height: parent.maxHeight * 0.70,
                  color: Colors.green,
                ),
                Container(
                  height: parent.maxHeight * 0.30,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: LayoutBuilder(builder: (ctx, parentContainer) {
                      return showColdDrink(parentContainer, ctx);
                    }),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    });
  }

  Widget displayScreen(BuildContext context) {
    //
    double ScreenWidth = MediaQuery.of(context).size.width; //size of screen
    double ScreenHeight = MediaQuery.of(context).size.height;
    if (ScreenHeight > ScreenWidth) {
      return mobileScreen();
    } else {
      return laptopScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Media Query Example"),
          ),
          body: displayScreen(context),
        ));
  }
}