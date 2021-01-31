import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'questions_model.g.dart';

@HiveType(typeId: 0)
class Questions {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final double bodyTemp;
  @HiveField(2)
  final double oxyLevel;
  @HiveField(3)
  final List<bool> ques;

  Questions({
    @required this.id,
    @required this.bodyTemp,
    @required this.oxyLevel,
    @required this.ques,
  });

}
