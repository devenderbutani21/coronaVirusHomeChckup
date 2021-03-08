import 'package:flutter/material.dart';

import 'questionnaire_screen.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  String temp;
  String bloodO2level;

  HomeScreen(
    this.temp,
    this.bloodO2level,
  );

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  DateTime now = new DateTime.now();

  List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(now, , ), // Error in this location look it up "the instance member this can the accessed in an initializer"
    QuestionnaireScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Questionnaire',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
