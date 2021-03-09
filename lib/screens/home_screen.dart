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
  DateTime _now = new DateTime.now();
  String _temp;
  String _bloodO2level;

  List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(
      _now,
      _temp,
      _bloodO2level,
    ),
    QuestionnaireScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _now = DateTime.now();
    _temp = widget.temp;
    _bloodO2level = widget.bloodO2level;
    super.initState();
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
