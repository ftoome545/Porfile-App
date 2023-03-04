import 'package:flutter/material.dart';
import 'package:practice_1/screens/profile_screen.dart';
import 'package:practice_1/screens/project_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget buildListTile(Icon icon, String title, VoidCallback tap) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: icon,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onTap: tap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 3, 55, 98),
            height: 120,
            width: double.infinity,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 60.0),
            child: ListTile(
              leading: Icon(
                Icons.close_rounded,
                size: 50.0,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          buildListTile(
              Icon(
                Icons.person,
                size: 50.0,
                color: Color.fromARGB(255, 62, 161, 242),
              ),
              'Profile', () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          }),
          buildListTile(
            Icon(
              Icons.work,
              size: 50.0,
              color: Color.fromARGB(255, 62, 161, 242),
            ),
            'Projects',
            () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProjectScreen()));
            },
          ),
          Divider(
            height: 5.0,
            thickness: 2.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
