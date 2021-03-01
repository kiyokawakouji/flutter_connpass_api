import 'dart:html';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_connpass_api_app/model/connpass_response.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:flutter_connpass_api_app/view/main_view_model.dart';
import 'package:flutter_connpass_api_app/view/main_view_model_data.dart';



 /// ListView部分
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title, @required this.event}) : super(key: key);

  final String title;
  final EventResponse event;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchQuery = TextEditingController();
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Linstenerを追加して更新処理を実装する
    _scrollController.addListener(() {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentPosition = _scrollController.position.pixels;
      if (maxScrollExtent > 0 && (maxScrollExtent - 20.0) <= currentPosition) {
        // ↑ 下端位置から20pixelの位置に達したら、コンテンツを読み込む
        // position.maxScrollExtent => ListView全体の下端位置
        // position.pixels => 現在の表示位置
        // TODO pagination
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // StateNotifierのStateを読む
    // context.select<Data,T>でデータを読み出す
    // selectはデータに変化があった際に自動でrebuildしてくれる
    final response = context.select<MainViewModelData, ConnpassResponse>((
        data) => data.response);
    final state = context.select<MainViewModelData, MainViewModelState>((
        data) => data.viewModelState);
    final List<EventResponse> eventList = response != null ? response.events : [
    ];

    // ListViewでJSONデータを表示
    var body = eventList.isNotEmpty
        ? ListView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        shrinkWrap: true,
        children: eventList
            .map((event) =>
            Column(
              children: [
                ListTile(
                  title: Text(event.title),
                  subtitle: Text(event.catchMessage),
                ),
                ButtonBarTheme(
                  data: const ButtonBarThemeData(),
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('詳細'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            )
          )
        .toList()
        )

    // bodyの初期画面
        : const Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'ここに検索結果を表示する',
              style: TextStyle(fontSize: 19),
              textAlign: TextAlign.center,
            ),
          ),
        );

    if (state == MainViewModelState.loading) {
      body = const Center(child: CircularProgressIndicator(),);
    } else if (state == MainViewModelState.error) {
      body = const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('エラーが発生しました。検索ワードを変えてお試しください',
            style: TextStyle(fontSize: 19), textAlign: TextAlign.center,),
      ),);
    }

    // AppBar 検索バー
    return Scaffold(
      appBar: AppBar(
        title: TextField(
            controller: _searchQuery,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: '検索バー',
              hintText: ' 例: 東京 Flutter ',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            )
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed:() {
            context.read<MainViewModel>().fetch(_searchQuery.text);
           })
         ],
      ),
      body: body,
    );
  }
}

// ブラウザで開く
// _launchURL(String url) async {
// const url = 'https://connpass.com/api/v1/event/';
// // urlが開けない場合の処理
//  if (await canLaunch(url)) {
//    await launch(url);
// } else {
//    throw 'Could not launch $url';
//  }
// }