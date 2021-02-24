import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter_connpass_api_app/model/connpass_response.dart';

 /// APIコール
Future<ConnpassResponse> get(String keyword) async {
  // APIサーバアクセス
  final url = 'https://connpass.com/api/v1/event/?count=100&order=1&keyword=$keyword';
  print(url);

  final response = await http.get(url);
  if (response.statusCode == 200) {
    return ConnpassResponse.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to connect to webservice');
  }
}
