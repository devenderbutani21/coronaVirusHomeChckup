import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  bool yesOrNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
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
    );
  }
}
