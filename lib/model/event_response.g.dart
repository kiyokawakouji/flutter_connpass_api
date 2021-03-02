// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventResponse _$_$_EventResponseFromJson(Map<String, dynamic> json) {
  return _$_EventResponse(
    eventId: json['eventId'] as int,
    title: json['title'] as String,
    catchMessage: json['catchMessage'] as String,
    description: json['description'] as String,
    eventUrl: json['eventUrl'] as String,
    hashTag: json['hashTag'] as String,
    startedAt: json['startedAt'] as String,
    endedAt: json['endedAt'] as String,
    limit: json['limit'] as int,
    eventType: json['eventType'] as String,
    address: json['address'] as String,
    place: json['place'] as String,
  );
}

Map<String, dynamic> _$_$_EventResponseToJson(_$_EventResponse instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'catchMessage': instance.catchMessage,
      'description': instance.description,
      'eventUrl': instance.eventUrl,
      'hashTag': instance.hashTag,
      'startedAt': instance.startedAt,
      'endedAt': instance.endedAt,
      'limit': instance.limit,
      'eventType': instance.eventType,
      'address': instance.address,
      'place': instance.place,
    };
