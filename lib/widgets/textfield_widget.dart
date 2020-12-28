import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  double _value;

  TextfieldWidget(this._value);

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: widget._value > 2 ? Colors.black : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
