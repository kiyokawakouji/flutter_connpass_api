import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_response.freezed.dart';
part 'event_response.g.dart';

 @freezed
 abstract class EventResponse with _$EventResponse {
   const factory EventResponse({
     final int eventId,
     final String title,
     final String catchMessage,
     final String description,
     final String eventUrl,
     final String hashTag,
     final String startedAt,
     final String endedAt,
     final int limit,
     final String eventType,
     final String address,
     final String place,
   }) = _EventResponse;

   factory EventResponse.fromJson(Map<String, dynamic> json) => _$EventResponseFromJson(json);
 }

//  class EventRepository{
//   final int eventId,
//   final String title,
//   final String catchMessage,
//   final String description,
//   final String eventUrl,
//   final String hashTag,
//   final String startedAt,
//   final String endedAt,
//   final int limit,
//   final String eventType,
//   final String address,
//   final String place,
//
//   EventRepository({
//     this.eventId,
//     this.title,
//     this.catchMessage,
//     this.description,
//     this.eventUrl,
//     this.hashTag,
//     this.startedAt,
//     this.endedAt,
//     this.limit,
//     this.eventType,
//     this.address,
//     this.place,
//   }),
//
//   factory EventRepository.fromJson(Map<String, dynamic> json) {
//     return EventRepository(
//       eventId: json['event_id'],
//       title: json['title'],
//       catchMessage: json['catch'],
//       description: json['description'],
//       eventUrl: json['event_url'],
//       hashTag: json['hash_tag'],
//       startedAt: json['started_at'],
//       endedAt: json['ended_at'],
//       limit: json['limit'],
//       eventType: json['event_type'],
//       address: json['address'],
//       place: json['place'],
//     ),
//   }
//
//
//   Map<String, dynamic> toJson() => {
//     'event_id': eventId,
//     'title': title,
//     'catch': catchMessage,
//     'description': description,
//     'event_url': eventUrl,
//     'hash_tag': hashTag,
//     'started_at': startedAt,
//     'ended_at': endedAt,
//     'limit': limit,
//     'event_type': eventType,
//     'address': address,
//     'place': place,
//   },
// }