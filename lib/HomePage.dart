import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


//own imports
import 'package:ecomapp/components/horizaontal_list_view.dart';
import 'package:ecomapp/components/products.dart';
import 'package:ecomapp/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_coursenal =new Container(
    height: 200,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/m1.jpeg'),
        AssetImage('images/c1.jpg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      dotSize: 4.0,
      indicatorBgPadding: 6.0,
      dotColor: Colors.red,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );
    return Scaffold(
      //appbar------------------------------------------------------------------
      appBar: new AppBar(
        elevation:0.1,
        backgroundColor: Colors.redAccent,
        title: Text("Shopify"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){}),
        ],
      ),

      //drawer------------------------------------------------------------------
      drawer: MyDrawer(),

      //body--------------------------------------------------------------------
      body: new ListView(
        children: [
          //image carousenal begins-------------------
          image_coursenal,

          //padding widget
          new Padding(padding: const EdgeInsets.all(18.0),
          //category text
          child: Text("Categories",),
          ),


          //Horizontal list view begins here----------
          HorizontalListView(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(18.0),
            //recent text
            child: Text("Recent Products",),
          ),

          //Grid View
          new Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}
