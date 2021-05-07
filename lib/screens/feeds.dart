import 'package:flutter/material.dart';
// import 'signin.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  var selectedIndex = 0;
  // final tabs = [
  //   Center(child: label('Home')),
  // ]
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Grocery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        fixedColor: Color(0xffff6240),
        type: BottomNavigationBarType.fixed,
      ),

      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        color: Colors.grey,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                //list
                Container()
              ],
            ),
          ),
        ),
      ),

      //change to image icon
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage('assets/icons/home.svg'),
      //       )
      //       title:
      //     ),
      //   ],
      // ),
    );

    // return Scaffold(
    //   body: Center(
    //     child: TextButton(
    //       style: TextButton.styleFrom(
    //           primary: Colors.white,
    //           backgroundColor: Color(0xffff6240),
    //           onSurface: Colors.grey),
    //       onPressed: () {
    //         Navigator.of(context)
    //             .pop(MaterialPageRoute(builder: (context) => MyHomePage()));
    //       },
    //       child: Text('GO TO HOME'),
    //     ),
    //   ),
    // );
  }
}
