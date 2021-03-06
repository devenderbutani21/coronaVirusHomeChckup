import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'radioButton_widget.dart';

class QuestionYesNo extends StatefulWidget {
  String _text;

  QuestionYesNo(this._text);

  @override
  _QuestionYesNoState createState() => _QuestionYesNoState();
}

class _QuestionYesNoState extends State<QuestionYesNo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 300,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextWidget(widget._text),
              ),
              RadioButton(),
            ],
          ),
        ],
      ),
    );
  }
}
