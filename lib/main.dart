import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_connpass_api_app/view/body.dart';
import 'package:flutter_connpass_api_app/view/main_view_model.dart';
import 'package:flutter_connpass_api_app/view/main_view_model_data.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Book State Notifier Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StateNotifierProvider<MainViewModel, MainViewModelData>(
        create: (_) => MainViewModel(),
        child: const MyHomePage(title: 'Connpass Event Search App'),
      ),
    );
  }
}