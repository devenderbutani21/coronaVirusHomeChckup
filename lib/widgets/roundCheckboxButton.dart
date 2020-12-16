import 'package:flutter/material.dart';

class RoundCheckboxButton extends StatelessWidget {
  final bool isCompleted;

  const RoundCheckboxButton(this.isCompleted);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted ? Color(0xff37d7b2) : Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: isCompleted
            ? Icon(
                Icons.check,
                size: 30,
                color: Colors.white,
              )
            : Icon(
                Icons.radio_button_unchecked,
                size: 30,
                color: Colors.black,
              ),
      ),
    );
  }
}
