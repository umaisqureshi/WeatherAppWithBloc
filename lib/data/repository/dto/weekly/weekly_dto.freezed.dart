// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyWeatherDto _$WeeklyWeatherDtoFromJson(Map<String, dynamic> json) {
  return _WeeklyWeatherDto.fromJson(json);
}

/// @nodoc
mixin _$WeeklyWeatherDto {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DailyDataDto? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyWeatherDtoCopyWith<WeeklyWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyWeatherDtoCopyWith<$Res> {
  factory $WeeklyWeatherDtoCopyWith(
          WeeklyWeatherDto value, $Res Function(WeeklyWeatherDto) then) =
      _$WeeklyWeatherDtoCopyWithImpl<$Res, WeeklyWeatherDto>;
  @useResult
  $Res call({double? latitude, double? longitude, DailyDataDto? daily});

  $DailyDataDtoCopyWith<$Res>? get daily;
}

/// @nodoc
class _$WeeklyWeatherDtoCopyWithImpl<$Res, $Val extends WeeklyWeatherDto>
    implements $WeeklyWeatherDtoCopyWith<$Res> {
  _$WeeklyWeatherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? daily = freezed,
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
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyDataDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyDataDtoCopyWith<$Res>? get daily {
    if (_value.daily == null) {
      return null;
    }

    return $DailyDataDtoCopyWith<$Res>(_value.daily!, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyWeatherDtoImplCopyWith<$Res>
    implements $WeeklyWeatherDtoCopyWith<$Res> {
  factory _$$WeeklyWeatherDtoImplCopyWith(_$WeeklyWeatherDtoImpl value,
          $Res Function(_$WeeklyWeatherDtoImpl) then) =
      __$$WeeklyWeatherDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude, DailyDataDto? daily});

  @override
  $DailyDataDtoCopyWith<$Res>? get daily;
}

/// @nodoc
class __$$WeeklyWeatherDtoImplCopyWithImpl<$Res>
    extends _$WeeklyWeatherDtoCopyWithImpl<$Res, _$WeeklyWeatherDtoImpl>
    implements _$$WeeklyWeatherDtoImplCopyWith<$Res> {
  __$$WeeklyWeatherDtoImplCopyWithImpl(_$WeeklyWeatherDtoImpl _value,
      $Res Function(_$WeeklyWeatherDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$WeeklyWeatherDtoImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyDataDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WeeklyWeatherDtoImpl implements _WeeklyWeatherDto {
  const _$WeeklyWeatherDtoImpl({this.latitude, this.longitude, this.daily});

  factory _$WeeklyWeatherDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyWeatherDtoImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DailyDataDto? daily;

  @override
  String toString() {
    return 'WeeklyWeatherDto(latitude: $latitude, longitude: $longitude, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyWeatherDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyWeatherDtoImplCopyWith<_$WeeklyWeatherDtoImpl> get copyWith =>
      __$$WeeklyWeatherDtoImplCopyWithImpl<_$WeeklyWeatherDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyWeatherDtoImplToJson(
      this,
    );
  }
}

abstract class _WeeklyWeatherDto implements WeeklyWeatherDto {
  const factory _WeeklyWeatherDto(
      {final double? latitude,
      final double? longitude,
      final DailyDataDto? daily}) = _$WeeklyWeatherDtoImpl;

  factory _WeeklyWeatherDto.fromJson(Map<String, dynamic> json) =
      _$WeeklyWeatherDtoImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DailyDataDto? get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyWeatherDtoImplCopyWith<_$WeeklyWeatherDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyDataDto _$DailyDataDtoFromJson(Map<String, dynamic> json) {
  return _DailyDataDto.fromJson(json);
}

/// @nodoc
mixin _$DailyDataDto {
  List<DateTime> get time => throw _privateConstructorUsedError;
  List<double> get apparentTemperatureMax => throw _privateConstructorUsedError;
  List<double> get apparentTemperatureMin => throw _privateConstructorUsedError;
  List<double> get windSpeed10mMax => throw _privateConstructorUsedError;
  List<int> get weatherCode => throw _privateConstructorUsedError;
  List<int> get relativeHumidity2mMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyDataDtoCopyWith<DailyDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyDataDtoCopyWith<$Res> {
  factory $DailyDataDtoCopyWith(
          DailyDataDto value, $Res Function(DailyDataDto) then) =
      _$DailyDataDtoCopyWithImpl<$Res, DailyDataDto>;
  @useResult
  $Res call(
      {List<DateTime> time,
      List<double> apparentTemperatureMax,
      List<double> apparentTemperatureMin,
      List<double> windSpeed10mMax,
      List<int> weatherCode,
      List<int> relativeHumidity2mMax});
}

/// @nodoc
class _$DailyDataDtoCopyWithImpl<$Res, $Val extends DailyDataDto>
    implements $DailyDataDtoCopyWith<$Res> {
  _$DailyDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? apparentTemperatureMax = null,
    Object? apparentTemperatureMin = null,
    Object? windSpeed10mMax = null,
    Object? weatherCode = null,
    Object? relativeHumidity2mMax = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      apparentTemperatureMax: null == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparentTemperatureMin: null == apparentTemperatureMin
          ? _value.apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed10mMax: null == windSpeed10mMax
          ? _value.windSpeed10mMax
          : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      relativeHumidity2mMax: null == relativeHumidity2mMax
          ? _value.relativeHumidity2mMax
          : relativeHumidity2mMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyDataDtoImplCopyWith<$Res>
    implements $DailyDataDtoCopyWith<$Res> {
  factory _$$DailyDataDtoImplCopyWith(
          _$DailyDataDtoImpl value, $Res Function(_$DailyDataDtoImpl) then) =
      __$$DailyDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> time,
      List<double> apparentTemperatureMax,
      List<double> apparentTemperatureMin,
      List<double> windSpeed10mMax,
      List<int> weatherCode,
      List<int> relativeHumidity2mMax});
}

/// @nodoc
class __$$DailyDataDtoImplCopyWithImpl<$Res>
    extends _$DailyDataDtoCopyWithImpl<$Res, _$DailyDataDtoImpl>
    implements _$$DailyDataDtoImplCopyWith<$Res> {
  __$$DailyDataDtoImplCopyWithImpl(
      _$DailyDataDtoImpl _value, $Res Function(_$DailyDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? apparentTemperatureMax = null,
    Object? apparentTemperatureMin = null,
    Object? windSpeed10mMax = null,
    Object? weatherCode = null,
    Object? relativeHumidity2mMax = null,
  }) {
    return _then(_$DailyDataDtoImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      apparentTemperatureMax: null == apparentTemperatureMax
          ? _value._apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparentTemperatureMin: null == apparentTemperatureMin
          ? _value._apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed10mMax: null == windSpeed10mMax
          ? _value._windSpeed10mMax
          : windSpeed10mMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      relativeHumidity2mMax: null == relativeHumidity2mMax
          ? _value._relativeHumidity2mMax
          : relativeHumidity2mMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DailyDataDtoImpl implements _DailyDataDto {
  const _$DailyDataDtoImpl(
      {final List<DateTime> time = const [],
      final List<double> apparentTemperatureMax = const [],
      final List<double> apparentTemperatureMin = const [],
      final List<double> windSpeed10mMax = const [],
      final List<int> weatherCode = const [],
      final List<int> relativeHumidity2mMax = const []})
      : _time = time,
        _apparentTemperatureMax = apparentTemperatureMax,
        _apparentTemperatureMin = apparentTemperatureMin,
        _windSpeed10mMax = windSpeed10mMax,
        _weatherCode = weatherCode,
        _relativeHumidity2mMax = relativeHumidity2mMax;

  factory _$DailyDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyDataDtoImplFromJson(json);

  final List<DateTime> _time;
  @override
  @JsonKey()
  List<DateTime> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _apparentTemperatureMax;
  @override
  @JsonKey()
  List<double> get apparentTemperatureMax {
    if (_apparentTemperatureMax is EqualUnmodifiableListView)
      return _apparentTemperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperatureMax);
  }

  final List<double> _apparentTemperatureMin;
  @override
  @JsonKey()
  List<double> get apparentTemperatureMin {
    if (_apparentTemperatureMin is EqualUnmodifiableListView)
      return _apparentTemperatureMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperatureMin);
  }

  final List<double> _windSpeed10mMax;
  @override
  @JsonKey()
  List<double> get windSpeed10mMax {
    if (_windSpeed10mMax is EqualUnmodifiableListView) return _windSpeed10mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed10mMax);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey()
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<int> _relativeHumidity2mMax;
  @override
  @JsonKey()
  List<int> get relativeHumidity2mMax {
    if (_relativeHumidity2mMax is EqualUnmodifiableListView)
      return _relativeHumidity2mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativeHumidity2mMax);
  }

  @override
  String toString() {
    return 'DailyDataDto(time: $time, apparentTemperatureMax: $apparentTemperatureMax, apparentTemperatureMin: $apparentTemperatureMin, windSpeed10mMax: $windSpeed10mMax, weatherCode: $weatherCode, relativeHumidity2mMax: $relativeHumidity2mMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyDataDtoImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMax, _apparentTemperatureMax) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMin, _apparentTemperatureMin) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10mMax, _windSpeed10mMax) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity2mMax, _relativeHumidity2mMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_apparentTemperatureMax),
      const DeepCollectionEquality().hash(_apparentTemperatureMin),
      const DeepCollectionEquality().hash(_windSpeed10mMax),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_relativeHumidity2mMax));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyDataDtoImplCopyWith<_$DailyDataDtoImpl> get copyWith =>
      __$$DailyDataDtoImplCopyWithImpl<_$DailyDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyDataDtoImplToJson(
      this,
    );
  }
}

abstract class _DailyDataDto implements DailyDataDto {
  const factory _DailyDataDto(
      {final List<DateTime> time,
      final List<double> apparentTemperatureMax,
      final List<double> apparentTemperatureMin,
      final List<double> windSpeed10mMax,
      final List<int> weatherCode,
      final List<int> relativeHumidity2mMax}) = _$DailyDataDtoImpl;

  factory _DailyDataDto.fromJson(Map<String, dynamic> json) =
      _$DailyDataDtoImpl.fromJson;

  @override
  List<DateTime> get time;
  @override
  List<double> get apparentTemperatureMax;
  @override
  List<double> get apparentTemperatureMin;
  @override
  List<double> get windSpeed10mMax;
  @override
  List<int> get weatherCode;
  @override
  List<int> get relativeHumidity2mMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyDataDtoImplCopyWith<_$DailyDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
