import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:flutter/gestures.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_launcher/url_launcher.dart';


class Detail extends StatelessWidget {
  const Detail({Key key, @required this.event}) : super(key: key);

  final EventResponse event;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('イベント詳細'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildDetail(),
            //buildUrl(),
          ],
        ),
      ),
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

  // Widget buildDetailRow(Map<String, dynamic> detailMap) {
  //   final detailList = <Widget>[];
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
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(value ?? ''),
              ),
            ),
          ],
      ));
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: detailList,
    );
  }


}
//
// _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
