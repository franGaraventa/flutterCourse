import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/utils/Strings.dart';

import 'images.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Account Name"),
                  accountEmail: Text("Account Email"),
                  currentAccountPicture: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/joker.jpg"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AssetImageWidget(
                imageFromNetwork: true,
                imageRoute:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Facebook_Home_logo.svg/1200px-Facebook_Home_logo.svg.png",
              ),
              AssetImageWidget(
                imageFromNetwork: true,
                imageRoute:
                    "https://data.apksum.com/da/com.ceyhan.sets/2.5/icon.png",
              ),
              AssetImageWidget(
                imageFromNetwork: true,
                imageRoute:
                    "https://cmsphoto.ww-cdn.com/superstatic/81328/art/grande/34325105-31402787.jpg?v=1559324698",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
