// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'connpass_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConnpassResponse _$ConnpassResponseFromJson(Map<String, dynamic> json) {
  return _ConnpassResponse.fromJson(json);
}

class _$ConnpassResponseTearOff {
  const _$ConnpassResponseTearOff();

// ignore: unused_element
  _ConnpassResponse call(
      {int resultsStart,
      int resultsReturned,
      int resultsAvailable,
      List<EventResponse> events}) {
    return _ConnpassResponse(
      resultsStart: resultsStart,
      resultsReturned: resultsReturned,
      resultsAvailable: resultsAvailable,
      events: events,
    );
  }
}

// ignore: unused_element
const $ConnpassResponse = _$ConnpassResponseTearOff();

mixin _$ConnpassResponse {
  int get resultsStart;
  int get resultsReturned;
  int get resultsAvailable;
  List<EventResponse> get events;

  Map<String, dynamic> toJson();
  $ConnpassResponseCopyWith<ConnpassResponse> get copyWith;
}

abstract class $ConnpassResponseCopyWith<$Res> {
  factory $ConnpassResponseCopyWith(
          ConnpassResponse value, $Res Function(ConnpassResponse) then) =
      _$ConnpassResponseCopyWithImpl<$Res>;
  $Res call(
      {int resultsStart,
      int resultsReturned,
      int resultsAvailable,
      List<EventResponse> events});
}

class _$ConnpassResponseCopyWithImpl<$Res>
    implements $ConnpassResponseCopyWith<$Res> {
  _$ConnpassResponseCopyWithImpl(this._value, this._then);

  final ConnpassResponse _value;
  // ignore: unused_field
  final $Res Function(ConnpassResponse) _then;

  @override
  $Res call({
    Object resultsStart = freezed,
    Object resultsReturned = freezed,
    Object resultsAvailable = freezed,
    Object events = freezed,
  }) {
    return _then(_value.copyWith(
      resultsStart:
          resultsStart == freezed ? _value.resultsStart : resultsStart as int,
      resultsReturned: resultsReturned == freezed
          ? _value.resultsReturned
          : resultsReturned as int,
      resultsAvailable: resultsAvailable == freezed
          ? _value.resultsAvailable
          : resultsAvailable as int,
      events: events == freezed ? _value.events : events as List<EventResponse>,
    ));
  }
}

abstract class _$ConnpassResponseCopyWith<$Res>
    implements $ConnpassResponseCopyWith<$Res> {
  factory _$ConnpassResponseCopyWith(
          _ConnpassResponse value, $Res Function(_ConnpassResponse) then) =
      __$ConnpassResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int resultsStart,
      int resultsReturned,
      int resultsAvailable,
      List<EventResponse> events});
}

class __$ConnpassResponseCopyWithImpl<$Res>
    extends _$ConnpassResponseCopyWithImpl<$Res>
    implements _$ConnpassResponseCopyWith<$Res> {
  __$ConnpassResponseCopyWithImpl(
      _ConnpassResponse _value, $Res Function(_ConnpassResponse) _then)
      : super(_value, (v) => _then(v as _ConnpassResponse));

  @override
  _ConnpassResponse get _value => super._value as _ConnpassResponse;

  @override
  $Res call({
    Object resultsStart = freezed,
    Object resultsReturned = freezed,
    Object resultsAvailable = freezed,
    Object events = freezed,
  }) {
    return _then(_ConnpassResponse(
      resultsStart:
          resultsStart == freezed ? _value.resultsStart : resultsStart as int,
      resultsReturned: resultsReturned == freezed
          ? _value.resultsReturned
          : resultsReturned as int,
      resultsAvailable: resultsAvailable == freezed
          ? _value.resultsAvailable
          : resultsAvailable as int,
      events: events == freezed ? _value.events : events as List<EventResponse>,
    ));
  }
}

@JsonSerializable()
class _$_ConnpassResponse
    with DiagnosticableTreeMixin
    implements _ConnpassResponse {
  const _$_ConnpassResponse(
      {this.resultsStart,
      this.resultsReturned,
      this.resultsAvailable,
      this.events});

  factory _$_ConnpassResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ConnpassResponseFromJson(json);

  @override
  final int resultsStart;
  @override
  final int resultsReturned;
  @override
  final int resultsAvailable;
  @override
  final List<EventResponse> events;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnpassResponse(resultsStart: $resultsStart, resultsReturned: $resultsReturned, resultsAvailable: $resultsAvailable, events: $events)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnpassResponse'))
      ..add(DiagnosticsProperty('resultsStart', resultsStart))
      ..add(DiagnosticsProperty('resultsReturned', resultsReturned))
      ..add(DiagnosticsProperty('resultsAvailable', resultsAvailable))
      ..add(DiagnosticsProperty('events', events));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnpassResponse &&
            (identical(other.resultsStart, resultsStart) ||
                const DeepCollectionEquality()
                    .equals(other.resultsStart, resultsStart)) &&
            (identical(other.resultsReturned, resultsReturned) ||
                const DeepCollectionEquality()
                    .equals(other.resultsReturned, resultsReturned)) &&
            (identical(other.resultsAvailable, resultsAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.resultsAvailable, resultsAvailable)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resultsStart) ^
      const DeepCollectionEquality().hash(resultsReturned) ^
      const DeepCollectionEquality().hash(resultsAvailable) ^
      const DeepCollectionEquality().hash(events);

  @override
  _$ConnpassResponseCopyWith<_ConnpassResponse> get copyWith =>
      __$ConnpassResponseCopyWithImpl<_ConnpassResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConnpassResponseToJson(this);
  }
}

abstract class _ConnpassResponse implements ConnpassResponse {
  const factory _ConnpassResponse(
      {int resultsStart,
      int resultsReturned,
      int resultsAvailable,
      List<EventResponse> events}) = _$_ConnpassResponse;

  factory _ConnpassResponse.fromJson(Map<String, dynamic> json) =
      _$_ConnpassResponse.fromJson;

  @override
  int get resultsStart;
  @override
  int get resultsReturned;
  @override
  int get resultsAvailable;
  @override
  List<EventResponse> get events;
  @override
  _$ConnpassResponseCopyWith<_ConnpassResponse> get copyWith;
}
