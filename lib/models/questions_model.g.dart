// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionsAdapter extends TypeAdapter<Questions> {
  @override
  final int typeId = 0;

  @override
  Questions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questions(
      id: fields[0] as String,
      bodyTemp: fields[1] as double,
      oxyLevel: fields[2] as double,
      ques: (fields[3] as List)?.cast<bool>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questions obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bodyTemp)
      ..writeByte(2)
      ..write(obj.oxyLevel)
      ..writeByte(3)
      ..write(obj.ques);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
