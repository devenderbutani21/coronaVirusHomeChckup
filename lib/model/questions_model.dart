class Questions {
  double bodyTemp;
  double oxyLevel;
  List<bool> ques;

  Questions(
    this.bodyTemp,
    this.oxyLevel,
    this.ques,
  );

  // factory Questions.fromMap(Map<String, dynamic> json) => Questions(
  //       bodyTemp: json["bodyTemp"],
  //       oxyLevel: json["oxyLevel"],
  //       ques: json["ques"],
  //     );

  Map<String, dynamic> toMap() => {
    "bodyTemp" : bodyTemp,
    "oxyLevel" : oxyLevel,
    "ques" : ques,
  };
}
