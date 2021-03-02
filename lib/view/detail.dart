import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const Detail({Key key, @required this.event, this.Catch, this.event_url})
      : super(key: key);

  final EventResponse event;
  // ignore: non_constant_identifier_names
  final String Catch;
  // ignore: non_constant_identifier_names
  final String event_url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント詳細'),
      ),
      body: Center(
        child: ListView(
          children: <Widget> [
            buildDetail(),
            buildUrl(Catch, event_url),

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

  // ignore: non_constant_identifier_names
  Widget buildUrl(String Catch, String eventUrl) {
    // ブラウザで開く
    // ignore: always_declare_return_types
    _launchURL(String url) async {
      //const url = 'https://connpass.com/api/v1/event/';
      // urlが開けない場合の処理
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        // ignore: only_throw_errors
        throw 'Could not launch $event_url';
      }
    }
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget> [
        Center(
      // child: RichText(
      //   text: TextSpan(
      //       style: const TextStyle(
      //         color: Colors.blue,
      //       ),
            // recognizer: TapGestureRecognizer()
            //   ..onTap = () async {
            //     await launch(
            //       event.eventUrl,
            //     );
            //   }

            child: RaisedButton(
            child: const Text('urlへ飛ぶ'),
            onPressed: () {
            _launchURL(eventUrl);
            },
            ),
            ),
            Card(
            child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
            Catch,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

    ],
    ),
    ),
           ),
      ],
    );
  }
}
