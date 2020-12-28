import 'package:flutter/material.dart';

class GraphBarWidget extends StatefulWidget {
  String _text;
  bool _tf;

  GraphBarWidget(this._text, this._tf);

  @override
  _GraphBarWidgetState createState() => _GraphBarWidgetState();
}

class _GraphBarWidgetState extends State<GraphBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 80,
              width: 40,
              color: Colors.red,
            ),
            Text(
              widget._text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
