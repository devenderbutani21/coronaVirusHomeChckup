import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  double _value;
  TextEditingController _textEditingController;

  TextfieldWidget(
    this._value,
    // this._textEditingController,
  );

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.black,
        ),
        child: TextField(
          controller: widget._textEditingController,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: _color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
