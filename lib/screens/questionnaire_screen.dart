import 'package:flutter/material.dart';

import 'submitted_screen.dart';

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
                for (var day in days) GraphBarWidget(day, false, false),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextWidget('What is your body temperature?'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 360,
              child: TextfieldWidget(0),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextWidget('What is your blood oxygen level?'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 360,
              child: TextfieldWidget(0),
            ),
            SizedBox(
              height: 10,
            ),
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
            for (var ques in arr) QuestionYesNo(ques, false, false),
            Row(
              children: [
                SizedBox(
                  width: 308,
                ),
                SizedBox(
                  width: 100,
                  child: FlatButton(
                    padding: EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    color: Colors.red,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Arial',
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        child: Dialog(
                          insetPadding: EdgeInsets.all(80),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                32),
                          ),
                          child: SubmittedScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
