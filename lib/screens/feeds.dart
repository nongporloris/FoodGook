// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'nestedTabBarView.dart';
// import 'package:foodgook/constant.dart';
// import 'signin.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> with TickerProviderStateMixin {
  var selectedIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    Color _notiIconColor = Colors.grey;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6240),
        // title: Text("Home"),
        // centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.orange[700],
            labelColor: Color(0xffff6240),
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.receipt),
                text: 'Recipes',
              ),
              Tab(
                icon: Icon(Icons.forum),
                text: 'Forum',
              ),
              Tab(
                icon: Icon(Icons.local_grocery_store),
                text: 'Grocery',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
            ]),
      ),
      body: TabBarView(
        children: <Widget>[
          NestedTabBar(),
          Center(
            child: Text("Recipes"),
            // RecipesPage(),
            //Add page route
          ),
          Center(
            child: Text("Forum"),
          ),
          Center(
            child: Text("Grocery"),
            //Add page route
          ),
          Center(
            child: Text("Profile"),
          ),
        ],
        controller: _tabController,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xffff6240),
        overlayColor: Colors.grey,
        overlayOpacity: 0.4,
        curve: Curves.easeIn,
        onOpen: () => print('Opening'),
        onClose: () => print('Closing'),
        children: [
          SpeedDialChild(
              child: Icon(Icons.add),
              label: 'Add recipe',
              backgroundColor: Color(0xffff6240),
              onTap: () => print('First')),
          SpeedDialChild(
            child: Icon(Icons.live_tv),
            label: 'Live show',
            backgroundColor: Color(0xffff6240),
            onTap: () => print('Second'),
          )
        ],
      ),
    );
  }
}
