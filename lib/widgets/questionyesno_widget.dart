import 'package:flutter/material.dart';

import 'text_widget.dart';
import 'roundCheckboxButton.dart';

class QuestionYesNo extends StatefulWidget {
  String _text;
  bool _yesNo;
  bool _yesvalue;

  QuestionYesNo(this._text,this._yesvalue, this._yesNo);

  @override
  _QuestionYesNoState createState() => _QuestionYesNoState();
}

class _QuestionYesNoState extends State<QuestionYesNo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextWidget(widget._text),
            ),
            RoundCheckboxButton(widget._yesNo),
            SizedBox(
              width: 10,
            ),
            RoundCheckboxButton(!widget._yesNo),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
