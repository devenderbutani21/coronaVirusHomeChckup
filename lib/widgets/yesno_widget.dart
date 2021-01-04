import 'package:flutter/material.dart';

import 'roundCheckboxButton.dart';

class YesNo extends StatefulWidget {


  @override
  _YesNoState createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  bool tap;
  bool _yesNo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            GestureDetector(
              child: RoundCheckboxButton(_yesNo),
              onTap: () {
                tap = true;
                _yesNo = false;
              },
            ),
            SizedBox(
              width: 10,
            ),
            RoundCheckboxButton(!_yesNo),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
