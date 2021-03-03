import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:flutter_connpass_api_app/model/connpass_response.dart';

 /// APIコール
Future<ConnpassResponse> getEvents(String searchWord) async {
  // APIサーバアクセス
  // const url = ('https://connpass.com/api/v1/event/?count=100&order=1&keyword=' + searchWord);
  // print(url);

  final response = await http.get('https://connpass.com/api/v1/event/?count=100&order=1&keyword=' + searchWord);
  if (response.statusCode == 200) {
    // サーバーがokの返答をしてくれた場合は、JSONを解析する
    return ConnpassResponse.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice');
  }
}
