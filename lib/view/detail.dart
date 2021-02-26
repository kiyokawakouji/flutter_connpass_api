import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_connpass_api_app/view/body.dart';

// ignore: missing_return, non_constant_identifier_names
Widget buildDetail() {
  final detailMap = <String>{
  '日時:${changeTimeFormat(event.startedAt)}~${changeTimeFormat(event.endedAt)}';
  '会場:${event.place}';
  '所在地:${event.address}';
  '"l(^Δ^)l""l(^Δ^)l""l(^Δ^)l"';
  };
  return Container(
  child: buildDetailRow(detailMap)
  );
}
  // ISO-8601形式を「○○/○○/○○/○○:○○」に変換
  String changeTimeFormat(String before) {
  initializeDateFormatting('ja_JP');

  final datetime = DateTime.parse(before);
  final formatter = DateFormat('yyyy/MM/dd HH:mm');
  final formatted = formatter.format(datetime);
  return formatted;
  }

Widget buildDetailRow(Map<String, String> detailMap) {
  final detailList = <Widget>[];
  detailMap.forEach((key, value) {
    detailList.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Rowなら左寄せ
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
              child: Text(key ?? ''),
            ),
          ),
        ]
    ));
   }
  );
}
