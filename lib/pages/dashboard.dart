import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: BottomNavigationBar(
          elevation: 0.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.black54,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
         // backgroundColor: Colors.black54,
          unselectedItemColor: Colors.white54,
           showUnselectedLabels: true,
          //unselectedLabelStyle: TextStyle(color: Colors.white54),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
