import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/home_page.dart';

class Bnavi extends StatefulWidget {
  const Bnavi({super.key});

  @override
  State<Bnavi> createState() => _BnaviState();
}

class _BnaviState extends State<Bnavi> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SecondPage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.network("https://picsum.photos/200/300",height: 30,width: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          log(value.toString());
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
