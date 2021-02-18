import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:flutter_connpass_api_app/view/detail.dart';



 /// ListView表示部分
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

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
    _scrollController.addListener(() {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentPosition = _scrollController.position.pixels;
      if (maxScrollExtent > 0 && (maxScrollExtent - 20.0) <= currentPosition) {
        // ignore: flutter_style_todos
        // TODO pagination
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // StateNotifierのStateを読む
    // context.select<Data,T>でデータを読み出す。　selectはデータに変化があった際に自動でrebuildしてくれる
    final response = context.select<ViewModelData, ConnpassResponse>((data) => data.response);
    final state = context.select<ViewModelData, ViewModelState>((data) => data.viewModelState);
    final List<ConnpassResponse> eventList = response != null ? response.events : [];

    // ListViewでJSONデータを表示
    var body = eventList.isNotEmpty ?
    ListView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        children: eventList
            .map((event) => Card(
            child: ListTile(
              title: Text(event.title),
              subtitle: Text(detailSection(),),
              onTap: () => _launchURL(event),
            )))
            .toList())
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

    if (state == ViewModelState.loading) {
      body = const Center(child: CircularProgressIndicator(),);
    } else if (state == ViewModelState.error) {
      body = const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          // ignore: lines_longer_than_80_chars
          child: Text('エラーが発生しました。検索ワードを変えてお試しください', style: TextStyle(fontSize: 19), textAlign: TextAlign.center,),
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
_launchURL(String url) async {
  const url = 'https://connpass.com/api/v1/event/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: only_throw_errors
    throw 'Could not launch $url';
  }
}