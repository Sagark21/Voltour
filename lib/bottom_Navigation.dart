import 'package:flutter/material.dart';
import 'package:voltour/profile.dart';

import 'drawer.dart';
import 'home.dart';
class BottomNavigation extends StatefulWidget {


  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  List pageOptions = [Home(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          
    backgroundColor: Colors.lightBlue[200],
    centerTitle: true,
    elevation: 1.0,
    title: Text("Voltour"),
  
  ),
   drawer: SidebarDrawer(),
      bottomNavigationBar: 
       Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          // child: new BottomAppBar(
            child: new Row(
          
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    setBottomBarIndex(0);
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.person,
                  ),
                  onPressed: () {
                    setBottomBarIndex(1);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                
                new IconButton(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
          body: pageOptions[currentIndex],
      
    );
  }
}