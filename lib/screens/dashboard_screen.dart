import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  static var now = new DateTime.now();
  static final DateFormat formatter = DateFormat('MM/dd/yyyy');
  final String formatted = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // Container(
          //   margin: EdgeInsets.only(
          //     left: 25,
          //   ),
          //   height: 180,
          //   width: 360,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16.0),
          //     color: Colors.blue,
          //   ),
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(
          //         height: 20,
          //       ),
          //       TextWidget('Daily Report'),
          //       SizedBox(
          //         height: 30,
          //       ),
          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 30,
          //           ),
          //           for (var day in days) GraphBarWidget(day, true, true),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(
              left: 25,
            ),
            height: 150,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Color(0xff0AFFB5),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      formatted.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.thermostat_sharp,
                      size: 48,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hello world',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.ac_unit,
                      size: 48,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hello world',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
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
