import 'package:flutter/material.dart';

import 'roundCheckboxButton.dart';

class YesNo extends StatefulWidget {
  bool _yesNo;

  YesNo(this._yesNo);

  @override
  _YesNoState createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
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
    );
  }
}
