import 'package:flutter/material.dart';

// ignore: missing_return
Widget buildDetail() {
  '日時': changeTimeFormat(event.startedAt) changeTimeFormat(event.endedAt),
  '会場': event.place,
  '所在地': event.address,
};

// ISO-8601形式を「○○/○○/○○/○○:○○」に変換
String changeTimeFormat(String before) {

  final datetime = DateTime.parse(before);
  final formatter = DateFormat('yyyy/MM/dd HH:mm');
  final formatted = formatter.format(datetime);
  return formatted;
}

