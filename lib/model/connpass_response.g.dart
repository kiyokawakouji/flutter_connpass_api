// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connpass_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConnpassResponse _$_$_ConnpassResponseFromJson(Map<String, dynamic> json) {
  return _$_ConnpassResponse(
    resultsStart: json['resultsStart'] as int,
    resultsReturned: json['resultsReturned'] as int,
    resultsAvailable: json['resultsAvailable'] as int,
    events: (json['events'] as List)
        ?.map((e) => e == null
            ? null
            : EventResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ConnpassResponseToJson(
        _$_ConnpassResponse instance) =>
    <String, dynamic>{
      'resultsStart': instance.resultsStart,
      'resultsReturned': instance.resultsReturned,
      'resultsAvailable': instance.resultsAvailable,
      'events': instance.events,
    };
