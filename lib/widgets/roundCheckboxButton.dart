import 'package:flutter/material.dart';

class RoundCheckboxButton extends StatefulWidget {
  final bool isCompleted;

  const RoundCheckboxButton(this.isCompleted);

  @override
  _RoundCheckboxButtonState createState() => _RoundCheckboxButtonState();
}

class _RoundCheckboxButtonState extends State<RoundCheckboxButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.isCompleted ? Color(0xff37d7b2) : Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: widget.isCompleted
            ? Icon(
                Icons.check,
                size: 16,
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
