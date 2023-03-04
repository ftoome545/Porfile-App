import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice_1/screens/project_screen.dart';
import '../widgets/app_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget buildContact(Icon icon, String info) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Text(info,
              style: TextStyle(
                fontSize: 20,
              )),
        ),
      ],
    );
  }

  Widget education(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //سيقوم بإزالة وضع التصحيح في أعلى الشاشة
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // centerTitle: true,
          backgroundColor: Color.fromARGB(255, 3, 55, 98),
        ),
        endDrawer: AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('images/FatimaLogo.jpeg'),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Text(
                          'Fatima Hure',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Brief',
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 15.0,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Expanded(
                              child: Text(
                                "More information about Fatima More information about Fatima...",
                                style: TextStyle(
                                  fontFamily: 'PlayfairDisplay',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          buildContact(
                              Icon(
                                Icons.phone,
                                color: Colors.blue,
                                size: 28,
                              ),
                              '+966 295749578925'),
                          SizedBox(
                            height: 20.0,
                          ),
                          buildContact(
                              Icon(
                                Icons.email,
                                color: Colors.blue,
                                size: 28,
                              ),
                              'fatima@gamil.com'),
                          SizedBox(
                            height: 20.0,
                          ),
                          buildContact(
                              Icon(
                                Icons.location_pin,
                                color: Colors.blue,
                                size: 28,
                              ),
                              'Saudi Arabi, Taif'),
                          SizedBox(
                            height: 20.0,
                          ),
                          buildContact(
                              Icon(
                                Icons.web_asset,
                                color: Colors.blue,
                                size: 28,
                              ),
                              'http://Fatima/sdgf/home.com'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Education',
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          education('Taif university 2017 - 2021'),
                          education('Computer Sientce'),
                          education('with Honours'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
