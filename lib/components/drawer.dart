import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          //header--------------------------------------------
          new UserAccountsDrawerHeader(accountName: Text("Harshit Kumar"),
            accountEmail: Text("harshitk980@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white ,),
              ),
            ),
            decoration: new BoxDecoration(
                color: Colors.redAccent
            ),
          ),

          //body------------------------------------------------
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home,color: Colors.blue,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My accounts"),
              leading: Icon(Icons.person,color: Colors.blue,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket,color: Colors.blue,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard,color: Colors.blue,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Favorites"),
              leading: Icon(Icons.favorite,color: Colors.red,),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings,color: Colors.lightBlueAccent,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("About"),
              leading: Icon(Icons.help,color: Colors.green,),
            ),
          ),
        ],
      ),
    );
  }
}
