import 'package:flutter/foundation.dart';
import 'package:flutter_connpass_api_app/model/event_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'connpass_response.freezed.dart';
part 'connpass_response.g.dart';

 @freezed
 abstract class ConnpassResponse with _$ConnpassResponse {
   const factory ConnpassResponse({
     final int resultsStart,
     final int resultsReturned,
     final int resultsAvailable,
     final List<EventResponse> events,
   }) = _ConnpassResponse;

   factory ConnpassResponse.fromJson(Map<String, dynamic> json) => _$ConnpassResponseFromJson(json);
 }

// class ConnpassRepository {
//   final int resultsReturned;
//   final int resultsAvailable;
//   final int resultsStart;
//   final List<EventRepository> events;
//
//   ConnpassRepository({
//     this.resultsReturned,
//     this.resultsAvailable,
//     this.resultsStart,
//     this.events
//   });

