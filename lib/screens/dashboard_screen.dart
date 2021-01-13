import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';
import '../widgets/graphbar_widget.dart';

var days = [
  'Mon',
  'Tues',
  'Wed',
  'Thurs',
  'Fri',
  'Sat',
  'Sun',
];

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          TextWidget('Daily Report'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              for (var day in days) GraphBarWidget(day, false, false),
            ],
          ),
        ],
      ),
    );
  }
}
