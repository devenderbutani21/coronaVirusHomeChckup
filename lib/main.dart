import 'package:flutter/material.dart';

import './screens/questionnaire_screen.dart';
import 'widgets/radioButton_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona Virus Checkup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuestionnaireScreen(),
      // home: RadioButton(),
    );
  }
}

