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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
              SizedBox(
                width: 10,
              ),
              GraphBarWidget(),
            ],
          ),
          TextfieldWidget(2.0),
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
          QuestionYesNo('Do you smell coffee or tea?'),
          SizedBox(
            height: 10,
          ),
          QuestionYesNo('Do you have dry cough?'),
          SizedBox(
            height: 10,
          ),
          QuestionYesNo('Do you have soar throat?'),
          SizedBox(
            height: 10,
          ),
          QuestionYesNo('Do you have body ache?'),
          SizedBox(
            height: 10,
          ),
          QuestionYesNo('Do you feel fatigue?'),
        ],
      ),
    );
  }
}
