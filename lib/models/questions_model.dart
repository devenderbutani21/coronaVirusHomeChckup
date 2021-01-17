import 'package:flutter/foundation.dart';

class Questions {
  final String id;
  final double bodyTemp;
  final double oxyLevel;
  final List<bool> ques;

  Questions({
    @required this.id,
    @required this.bodyTemp,
    @required this.oxyLevel,
    @required this.ques,
  });

// Map<String, dynamic> toMap() => {
//   "bodyTemp" : bodyTemp,
//   "oxyLevel" : oxyLevel,
//   "ques" : ques,
// };
}
