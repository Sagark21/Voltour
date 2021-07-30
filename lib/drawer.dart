import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SidebarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            color: Colors.lightBlue[200],
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.16,
                          backgroundColor: Colors.grey[400].withOpacity(
                            0.4,
                          ),
                          child: Icon(
                            FontAwesomeIcons.user,
                            color:Colors.white,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "ABCD",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                  ),
                  Text(
                    "abcd@gmail.com",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              'Change Password',
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.arrow_back_ios_sharp),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'About',
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}