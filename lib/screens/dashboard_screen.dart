import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';
import '../widgets/graphbar_widget.dart';

var days = [
  'M',
  'T',
  'W',
  'Th',
  'F',
  'Sa',
  'Su',
];

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 25,
            ),
            height: 180,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.red,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                TextWidget('Daily Report'),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    for (var day in days) GraphBarWidget(day, false, false),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
