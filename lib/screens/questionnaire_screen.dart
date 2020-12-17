import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';
import '../widgets/questionyesno_widget.dart';
import '../widgets/textfield_widget.dart';
import '../widgets/graphbar_widget.dart';

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  MediaQueryData mediaQuery;

  var arr = [
    'Do you smell coffee or tea?',
    'Do you have dry cough?',
    'Do you have soar throat?',
    'Do you feel fatigue?'
  ];

  var days = [
    'Mon',
    'Tues',
    'Wed',
    'Thurs',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            TextWidget('Daily Report'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                for (var day in days) GraphBarWidget(day, true),
              ],
            ),
            TextfieldWidget(0),
            TextWidget('Please answer the following yes/no questions:'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 50,
                  ),
                ),
                TextWidget('Yes'),
                SizedBox(
                  width: 10,
                ),
                TextWidget('No'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            for (var ques in arr) QuestionYesNo(ques),
          ],
        ),
      ),
    );
  }
}
