import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class SubmittedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      child: Column(
        children: <Widget>[
          Container(
            height: 30,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 230,
                ),
                IconButton(
                  iconSize: 18,
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          TextWidget('Submitted Successfully'),
        ],
      ),
    );
  }
}
