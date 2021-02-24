import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/view/body.dart';

// ignore: missing_return, non_constant_identifier_names
String buildDetail() {
  final detailMap = {
  '日時:${changeTimeFormat(event.startedAt)}~${changeTimeFormat(event.endedAt)}';
  '会場:${event.place}';
  '所在地:${event.address}';
} as Map<String, String>;
  return Container(
  child: detailSection(detailMap)
  );
}

detailSection(Map<String, String> detailMap) {
}


// ISO-8601形式を「○○/○○/○○/○○:○○」に変換
String changeTimeFormat(String before) {

  final datetime = DateTime.parse(before);
  final formatter = DateFormat('yyyy/MM/dd HH:mm');
  final formatted = formatter.format(datetime);
  return formatted;
}

