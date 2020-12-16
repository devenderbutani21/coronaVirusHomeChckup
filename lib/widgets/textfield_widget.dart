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
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
        labelStyle: new TextStyle(
          color: const Color(0xFF424242),
        ),
      ),
    );
  }
}
