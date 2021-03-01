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

   factory EventResponse.fromJson(Map<String, dynamic> json) =>
       _$EventResponseFromJson(json);
 }
