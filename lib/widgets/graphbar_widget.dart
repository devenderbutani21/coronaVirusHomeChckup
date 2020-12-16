import 'package:flutter/material.dart';


class GraphBarWidget extends StatefulWidget {
  @override
  _GraphBarWidgetState createState() => _GraphBarWidgetState();
}

class _GraphBarWidgetState extends State<GraphBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 40,
          color: Colors.red,
        ),
        Text('Monday'),
      ],
    );
  }
}
