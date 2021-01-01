import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class SubmittedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 60,
        width: 200,
        child: Column(
          children: <Widget>[
            TextWidget('Submitted Successfully'),
          ],
        ),
      ),
    );
  }
}
