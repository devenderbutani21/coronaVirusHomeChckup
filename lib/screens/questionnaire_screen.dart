import 'package:coronavirushomecheckup/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/text_widget.dart';
import '../widgets/questionyesno_widget.dart';
import '../widgets/textfield_widget.dart';

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  TextEditingController bodyTempController = TextEditingController();
  TextEditingController bloodOxygenController = TextEditingController();

  MediaQueryData mediaQuery;

  var arr = [
    'Do you smell coffee or tea?',
    'Do you taste Coffee or tea?',
    'Do you have dry cough?',
    'Do you have soar throat?',
    'Do you feel fatigue?'
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Questions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 32,
            right: 32,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextWidget('What is your body temperature?'),
                  ),
                ],
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
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextWidget('What is your blood oxygen level?'),
                  ),
                ],
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
                  SizedBox(
                    width: 260,
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
              for (var ques in arr)
                Container(
                  height: 70,
                  width: 360,
                  child: QuestionYesNo(ques),
                ),
              Row(
                children: [
                  SizedBox(
                    width: 244,
                  ),
                  SizedBox(
                    width: 100,
                    child: MaterialButton(
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
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
      ),
    );
  }
}
