import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'roundCheckboxButton.dart';

class QuestionYesNo extends StatefulWidget {
  String _text;

  QuestionYesNo(this._text);

  @override
  _QuestionYesNoState createState() => _QuestionYesNoState();
}

class _QuestionYesNoState extends State<QuestionYesNo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: TextWidget(widget._text),
        ),
        RoundCheckboxButton(true),
        SizedBox(
          width: 10,
        ),
        RoundCheckboxButton(false),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
