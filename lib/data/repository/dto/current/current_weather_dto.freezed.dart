// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeatherDto _$CurrentWeatherDtoFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherDto {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  CurrentWeatherDetailDto? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDtoCopyWith<CurrentWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDtoCopyWith<$Res> {
  factory $CurrentWeatherDtoCopyWith(
          CurrentWeatherDto value, $Res Function(CurrentWeatherDto) then) =
      _$CurrentWeatherDtoCopyWithImpl<$Res, CurrentWeatherDto>;
  @useResult
  $Res call(
      {double? latitude, double? longitude, CurrentWeatherDetailDto? current});

  $CurrentWeatherDetailDtoCopyWith<$Res>? get current;
}

/// @nodoc
class _$CurrentWeatherDtoCopyWithImpl<$Res, $Val extends CurrentWeatherDto>
    implements $CurrentWeatherDtoCopyWith<$Res> {
  _$CurrentWeatherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherDetailDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherDetailDtoCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeatherDetailDtoCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherDtoImplCopyWith<$Res>
    implements $CurrentWeatherDtoCopyWith<$Res> {
  factory _$$CurrentWeatherDtoImplCopyWith(_$CurrentWeatherDtoImpl value,
          $Res Function(_$CurrentWeatherDtoImpl) then) =
      __$$CurrentWeatherDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude, double? longitude, CurrentWeatherDetailDto? current});

  @override
  $CurrentWeatherDetailDtoCopyWith<$Res>? get current;
}

/// @nodoc
class __$$CurrentWeatherDtoImplCopyWithImpl<$Res>
    extends _$CurrentWeatherDtoCopyWithImpl<$Res, _$CurrentWeatherDtoImpl>
    implements _$$CurrentWeatherDtoImplCopyWith<$Res> {
  __$$CurrentWeatherDtoImplCopyWithImpl(_$CurrentWeatherDtoImpl _value,
      $Res Function(_$CurrentWeatherDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? current = freezed,
  }) {
    return _then(_$CurrentWeatherDtoImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherDetailDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CurrentWeatherDtoImpl implements _CurrentWeatherDto {
  const _$CurrentWeatherDtoImpl({this.latitude, this.longitude, this.current});

  factory _$CurrentWeatherDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherDtoImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final CurrentWeatherDetailDto? current;

  @override
  String toString() {
    return 'CurrentWeatherDto(latitude: $latitude, longitude: $longitude, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDtoImplCopyWith<_$CurrentWeatherDtoImpl> get copyWith =>
      __$$CurrentWeatherDtoImplCopyWithImpl<_$CurrentWeatherDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherDto implements CurrentWeatherDto {
  const factory _CurrentWeatherDto(
      {final double? latitude,
      final double? longitude,
      final CurrentWeatherDetailDto? current}) = _$CurrentWeatherDtoImpl;

  factory _CurrentWeatherDto.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherDtoImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  CurrentWeatherDetailDto? get current;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherDtoImplCopyWith<_$CurrentWeatherDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeatherDetailDto _$CurrentWeatherDetailDtoFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherDetailDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherDetailDto {
  String? get time => throw _privateConstructorUsedError;
  double? get apparentTemperature => throw _privateConstructorUsedError;
  double? get windSpeed10M => throw _privateConstructorUsedError;
  int? get weatherCode => throw _privateConstructorUsedError;
  int? get isDay => throw _privateConstructorUsedError;
  int? get relativeHumidity2M => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDetailDtoCopyWith<CurrentWeatherDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDetailDtoCopyWith<$Res> {
  factory $CurrentWeatherDetailDtoCopyWith(CurrentWeatherDetailDto value,
          $Res Function(CurrentWeatherDetailDto) then) =
      _$CurrentWeatherDetailDtoCopyWithImpl<$Res, CurrentWeatherDetailDto>;
  @useResult
  $Res call(
      {String? time,
      double? apparentTemperature,
      double? windSpeed10M,
      int? weatherCode,
      int? isDay,
      int? relativeHumidity2M});
}

/// @nodoc
class _$CurrentWeatherDetailDtoCopyWithImpl<$Res,
        $Val extends CurrentWeatherDetailDto>
    implements $CurrentWeatherDetailDtoCopyWith<$Res> {
  _$CurrentWeatherDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? apparentTemperature = freezed,
    Object? windSpeed10M = freezed,
    Object? weatherCode = freezed,
    Object? isDay = freezed,
    Object? relativeHumidity2M = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      apparentTemperature: freezed == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value.relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherDetailDtoImplCopyWith<$Res>
    implements $CurrentWeatherDetailDtoCopyWith<$Res> {
  factory _$$CurrentWeatherDetailDtoImplCopyWith(
          _$CurrentWeatherDetailDtoImpl value,
          $Res Function(_$CurrentWeatherDetailDtoImpl) then) =
      __$$CurrentWeatherDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      double? apparentTemperature,
      double? windSpeed10M,
      int? weatherCode,
      int? isDay,
      int? relativeHumidity2M});
}

/// @nodoc
class __$$CurrentWeatherDetailDtoImplCopyWithImpl<$Res>
    extends _$CurrentWeatherDetailDtoCopyWithImpl<$Res,
        _$CurrentWeatherDetailDtoImpl>
    implements _$$CurrentWeatherDetailDtoImplCopyWith<$Res> {
  __$$CurrentWeatherDetailDtoImplCopyWithImpl(
      _$CurrentWeatherDetailDtoImpl _value,
      $Res Function(_$CurrentWeatherDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? apparentTemperature = freezed,
    Object? windSpeed10M = freezed,
    Object? weatherCode = freezed,
    Object? isDay = freezed,
    Object? relativeHumidity2M = freezed,
  }) {
    return _then(_$CurrentWeatherDetailDtoImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      apparentTemperature: freezed == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed10M: freezed == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      relativeHumidity2M: freezed == relativeHumidity2M
          ? _value.relativeHumidity2M
          : relativeHumidity2M // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CurrentWeatherDetailDtoImpl implements _CurrentWeatherDetailDto {
  const _$CurrentWeatherDetailDtoImpl(
      {this.time,
      this.apparentTemperature,
      this.windSpeed10M,
      this.weatherCode,
      this.isDay,
      this.relativeHumidity2M});

  factory _$CurrentWeatherDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherDetailDtoImplFromJson(json);

  @override
  final String? time;
  @override
  final double? apparentTemperature;
  @override
  final double? windSpeed10M;
  @override
  final int? weatherCode;
  @override
  final int? isDay;
  @override
  final int? relativeHumidity2M;

  @override
  String toString() {
    return 'CurrentWeatherDetailDto(time: $time, apparentTemperature: $apparentTemperature, windSpeed10M: $windSpeed10M, weatherCode: $weatherCode, isDay: $isDay, relativeHumidity2M: $relativeHumidity2M)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDetailDtoImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.relativeHumidity2M, relativeHumidity2M) ||
                other.relativeHumidity2M == relativeHumidity2M));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, apparentTemperature,
      windSpeed10M, weatherCode, isDay, relativeHumidity2M);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDetailDtoImplCopyWith<_$CurrentWeatherDetailDtoImpl>
      get copyWith => __$$CurrentWeatherDetailDtoImplCopyWithImpl<
          _$CurrentWeatherDetailDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherDetailDto implements CurrentWeatherDetailDto {
  const factory _CurrentWeatherDetailDto(
      {final String? time,
      final double? apparentTemperature,
      final double? windSpeed10M,
      final int? weatherCode,
      final int? isDay,
      final int? relativeHumidity2M}) = _$CurrentWeatherDetailDtoImpl;

  factory _CurrentWeatherDetailDto.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherDetailDtoImpl.fromJson;

  @override
  String? get time;
  @override
  double? get apparentTemperature;
  @override
  double? get windSpeed10M;
  @override
  int? get weatherCode;
  @override
  int? get isDay;
  @override
  int? get relativeHumidity2M;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherDetailDtoImplCopyWith<_$CurrentWeatherDetailDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
