import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:flutter/gestures.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_launcher/url_launcher.dart';


 /// イベント詳細のレイアウト
class Detail extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final EventResponse args = ModalRoute.of(context).settings.arguments;
    //変数受け取り確認
    print("${args.place}");
    print("${args.startedAt}");
    print("${args.address}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント詳細'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 30, 40),
        padding: const EdgeInsets.fromLTRB(10, 20, 50, 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildDetail(args),
            buildUrl(args),
          ],
        ),
      ),
    );
  }


  Widget buildDetail(EventResponse args) {
    Map<String, String> argsDetail = {
      //'開催日時': changeTimeFormat(args.startedAt),
      //'終了日時': changeTimeFormat(args.endedAt),
      'タイトル': args.title,
      '会場': args.place,
      '会場の所在地': args.address,
    };

    return Container(
        child: buildDetailRow(argsDetail)
    );
  }


  Widget buildDetailRow(Map<String, String> argsDetail) {
    final detailList = <Widget>[];
    argsDetail.forEach((key, value) {
      detailList.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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


  Widget buildUrl(EventResponse args) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              children: [
                TextSpan(
                    text: 'connpassページはこちらから',
                    style: const TextStyle(color: Colors.lightBlue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        await launch(
                          // event.eventUrl,
                          'https://rakus.connpass.com/event/204540/',
                          forceWebView: true, // ios内かブラウザのどちらで開くかを指定 trunはios
                          forceSafariVC: true, // Android内かブラウザのどちらで開くかを指定 trunはAndroid
                        );
                      }
                ),
              ]
          ),
        )
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
}