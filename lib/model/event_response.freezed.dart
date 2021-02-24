// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EventResponse _$EventResponseFromJson(Map<String, dynamic> json) {
  return _EventResponse.fromJson(json);
}

class _$EventResponseTearOff {
  const _$EventResponseTearOff();

// ignore: unused_element
  _EventResponse call(
      {int eventId,
      String title,
      String catchMessage,
      String description,
      String eventUrl,
      String hashTag,
      String startedAt,
      String endedAt,
      int limit,
      String eventType,
      String address,
      String place}) {
    return _EventResponse(
      eventId: eventId,
      title: title,
      catchMessage: catchMessage,
      description: description,
      eventUrl: eventUrl,
      hashTag: hashTag,
      startedAt: startedAt,
      endedAt: endedAt,
      limit: limit,
      eventType: eventType,
      address: address,
      place: place,
    );
  }
}

// ignore: unused_element
const $EventResponse = _$EventResponseTearOff();

mixin _$EventResponse {
  int get eventId;
  String get title;
  String get catchMessage;
  String get description;
  String get eventUrl;
  String get hashTag;
  String get startedAt;
  String get endedAt;
  int get limit;
  String get eventType;
  String get address;
  String get place;

  Map<String, dynamic> toJson();
  $EventResponseCopyWith<EventResponse> get copyWith;
}

abstract class $EventResponseCopyWith<$Res> {
  factory $EventResponseCopyWith(
          EventResponse value, $Res Function(EventResponse) then) =
      _$EventResponseCopyWithImpl<$Res>;
  $Res call(
      {int eventId,
      String title,
      String catchMessage,
      String description,
      String eventUrl,
      String hashTag,
      String startedAt,
      String endedAt,
      int limit,
      String eventType,
      String address,
      String place});
}

class _$EventResponseCopyWithImpl<$Res>
    implements $EventResponseCopyWith<$Res> {
  _$EventResponseCopyWithImpl(this._value, this._then);

  final EventResponse _value;
  // ignore: unused_field
  final $Res Function(EventResponse) _then;

  @override
  $Res call({
    Object eventId = freezed,
    Object title = freezed,
    Object catchMessage = freezed,
    Object description = freezed,
    Object eventUrl = freezed,
    Object hashTag = freezed,
    Object startedAt = freezed,
    Object endedAt = freezed,
    Object limit = freezed,
    Object eventType = freezed,
    Object address = freezed,
    Object place = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: eventId == freezed ? _value.eventId : eventId as int,
      title: title == freezed ? _value.title : title as String,
      catchMessage: catchMessage == freezed
          ? _value.catchMessage
          : catchMessage as String,
      description:
          description == freezed ? _value.description : description as String,
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      hashTag: hashTag == freezed ? _value.hashTag : hashTag as String,
      startedAt: startedAt == freezed ? _value.startedAt : startedAt as String,
      endedAt: endedAt == freezed ? _value.endedAt : endedAt as String,
      limit: limit == freezed ? _value.limit : limit as int,
      eventType: eventType == freezed ? _value.eventType : eventType as String,
      address: address == freezed ? _value.address : address as String,
      place: place == freezed ? _value.place : place as String,
    ));
  }
}

abstract class _$EventResponseCopyWith<$Res>
    implements $EventResponseCopyWith<$Res> {
  factory _$EventResponseCopyWith(
          _EventResponse value, $Res Function(_EventResponse) then) =
      __$EventResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int eventId,
      String title,
      String catchMessage,
      String description,
      String eventUrl,
      String hashTag,
      String startedAt,
      String endedAt,
      int limit,
      String eventType,
      String address,
      String place});
}

class __$EventResponseCopyWithImpl<$Res>
    extends _$EventResponseCopyWithImpl<$Res>
    implements _$EventResponseCopyWith<$Res> {
  __$EventResponseCopyWithImpl(
      _EventResponse _value, $Res Function(_EventResponse) _then)
      : super(_value, (v) => _then(v as _EventResponse));

  @override
  _EventResponse get _value => super._value as _EventResponse;

  @override
  $Res call({
    Object eventId = freezed,
    Object title = freezed,
    Object catchMessage = freezed,
    Object description = freezed,
    Object eventUrl = freezed,
    Object hashTag = freezed,
    Object startedAt = freezed,
    Object endedAt = freezed,
    Object limit = freezed,
    Object eventType = freezed,
    Object address = freezed,
    Object place = freezed,
  }) {
    return _then(_EventResponse(
      eventId: eventId == freezed ? _value.eventId : eventId as int,
      title: title == freezed ? _value.title : title as String,
      catchMessage: catchMessage == freezed
          ? _value.catchMessage
          : catchMessage as String,
      description:
          description == freezed ? _value.description : description as String,
      eventUrl: eventUrl == freezed ? _value.eventUrl : eventUrl as String,
      hashTag: hashTag == freezed ? _value.hashTag : hashTag as String,
      startedAt: startedAt == freezed ? _value.startedAt : startedAt as String,
      endedAt: endedAt == freezed ? _value.endedAt : endedAt as String,
      limit: limit == freezed ? _value.limit : limit as int,
      eventType: eventType == freezed ? _value.eventType : eventType as String,
      address: address == freezed ? _value.address : address as String,
      place: place == freezed ? _value.place : place as String,
    ));
  }
}

@JsonSerializable()
class _$_EventResponse with DiagnosticableTreeMixin implements _EventResponse {
  const _$_EventResponse(
      {this.eventId,
      this.title,
      this.catchMessage,
      this.description,
      this.eventUrl,
      this.hashTag,
      this.startedAt,
      this.endedAt,
      this.limit,
      this.eventType,
      this.address,
      this.place});

  factory _$_EventResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EventResponseFromJson(json);

  @override
  final int eventId;
  @override
  final String title;
  @override
  final String catchMessage;
  @override
  final String description;
  @override
  final String eventUrl;
  @override
  final String hashTag;
  @override
  final String startedAt;
  @override
  final String endedAt;
  @override
  final int limit;
  @override
  final String eventType;
  @override
  final String address;
  @override
  final String place;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventResponse(eventId: $eventId, title: $title, catchMessage: $catchMessage, description: $description, eventUrl: $eventUrl, hashTag: $hashTag, startedAt: $startedAt, endedAt: $endedAt, limit: $limit, eventType: $eventType, address: $address, place: $place)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventResponse'))
      ..add(DiagnosticsProperty('eventId', eventId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('catchMessage', catchMessage))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('eventUrl', eventUrl))
      ..add(DiagnosticsProperty('hashTag', hashTag))
      ..add(DiagnosticsProperty('startedAt', startedAt))
      ..add(DiagnosticsProperty('endedAt', endedAt))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('place', place));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventResponse &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.catchMessage, catchMessage) ||
                const DeepCollectionEquality()
                    .equals(other.catchMessage, catchMessage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.eventUrl, eventUrl) ||
                const DeepCollectionEquality()
                    .equals(other.eventUrl, eventUrl)) &&
            (identical(other.hashTag, hashTag) ||
                const DeepCollectionEquality()
                    .equals(other.hashTag, hashTag)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.endedAt, endedAt) ||
                const DeepCollectionEquality()
                    .equals(other.endedAt, endedAt)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.eventType, eventType) ||
                const DeepCollectionEquality()
                    .equals(other.eventType, eventType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(catchMessage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(eventUrl) ^
      const DeepCollectionEquality().hash(hashTag) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(endedAt) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(eventType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(place);

  @override
  _$EventResponseCopyWith<_EventResponse> get copyWith =>
      __$EventResponseCopyWithImpl<_EventResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventResponseToJson(this);
  }
}

abstract class _EventResponse implements EventResponse {
  const factory _EventResponse(
      {int eventId,
      String title,
      String catchMessage,
      String description,
      String eventUrl,
      String hashTag,
      String startedAt,
      String endedAt,
      int limit,
      String eventType,
      String address,
      String place}) = _$_EventResponse;

  factory _EventResponse.fromJson(Map<String, dynamic> json) =
      _$_EventResponse.fromJson;

  @override
  int get eventId;
  @override
  String get title;
  @override
  String get catchMessage;
  @override
  String get description;
  @override
  String get eventUrl;
  @override
  String get hashTag;
  @override
  String get startedAt;
  @override
  String get endedAt;
  @override
  int get limit;
  @override
  String get eventType;
  @override
  String get address;
  @override
  String get place;
  @override
  _$EventResponseCopyWith<_EventResponse> get copyWith;
}
