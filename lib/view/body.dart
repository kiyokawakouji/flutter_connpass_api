import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/model/connpass_response.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:flutter_connpass_api_app/view/main_view_model.dart';
import 'package:flutter_connpass_api_app/view/main_view_model_data.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // AppBarに検索バーを作成
  final TextEditingController _search = TextEditingController();
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
      }
    });
  }

  /// ListView部分
  @override
  Widget build(BuildContext context) {
    // StateNotifierのStateを読む
    // context.select<Data,T>でデータを読み出す
    // selectはデータに変化があった際に自動でrebuildしてくれる(copyWith)
    final response = context.select<MainViewModelData, ConnpassResponse>((data) => data.response);
    final state = context.select<MainViewModelData, MainViewModelState>((data) => data.viewModelState);
    final List<EventResponse> eventList = response != null ? response.events : [];

    print("(^0^)$eventList");
    // ListViewでJSONデータを表示
    Widget body = eventList.isNotEmpty
        ? ListView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        shrinkWrap: true,
        children: eventList
            .map((event) {
          print("${event.startedAt}");
          return Card(
            child: ListTile(
              title: Text(event.title),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: event,
                );
              },
            ),
          );
        }).toList())

    // bodyの初期画面
        : Center(
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


    /// AppBar 検索バー
    return Scaffold(
      appBar: AppBar(
        title: TextField(
            controller: _search,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: '検索バー',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            )
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {
            context.read<MainViewModel>().fetch(_search.text);
          })
        ],
      ),
      body: body,
    );
  }
}