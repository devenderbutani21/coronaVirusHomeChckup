import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String _text;

  TextWidget(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      softWrap: true,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
