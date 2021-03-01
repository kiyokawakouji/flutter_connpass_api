import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/view/body.dart';



recognizer: TapGestureRecognizer()
..onTap = () async {
await launch(
event.eventUrl,
forceWebView: true,
forceSafariVC: true,
);
}


// イベント詳細のレイアウト
Widget buildDetail() {
  final detailMap = <String, String>{
    '開催日時': changeTimeFormat(event.startedAt),
    '終了日時': changeTimeFormat(event.endedAt),
    '会場': event.place,
    '会場の所在地': event.address,
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
