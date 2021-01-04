import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  bool yesOrNo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Radio(
              value: true,
              groupValue: yesOrNo,
              onChanged: (T) {
                print(T);
                    setState(() {
                      yesOrNo = T;
                    });
              },
            ),
            Radio(
              value: false,
              groupValue: yesOrNo,
              onChanged: (T) {
                print(T);
                setState(() {
                  yesOrNo = T;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
