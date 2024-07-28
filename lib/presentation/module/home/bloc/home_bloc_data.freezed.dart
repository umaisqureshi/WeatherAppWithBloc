// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocData {
  WeeklyWeatherEntity? get weeklyData => throw _privateConstructorUsedError;
  CurrentWeatherEntity? get currentWeatherData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocDataCopyWith<HomeBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocDataCopyWith<$Res> {
  factory $HomeBlocDataCopyWith(
          HomeBlocData value, $Res Function(HomeBlocData) then) =
      _$HomeBlocDataCopyWithImpl<$Res, HomeBlocData>;
  @useResult
  $Res call(
      {WeeklyWeatherEntity? weeklyData,
      CurrentWeatherEntity? currentWeatherData});
}

/// @nodoc
class _$HomeBlocDataCopyWithImpl<$Res, $Val extends HomeBlocData>
    implements $HomeBlocDataCopyWith<$Res> {
  _$HomeBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyData = freezed,
    Object? currentWeatherData = freezed,
  }) {
    return _then(_value.copyWith(
      weeklyData: freezed == weeklyData
          ? _value.weeklyData
          : weeklyData // ignore: cast_nullable_to_non_nullable
              as WeeklyWeatherEntity?,
      currentWeatherData: freezed == currentWeatherData
          ? _value.currentWeatherData
          : currentWeatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBlocDataImplCopyWith<$Res>
    implements $HomeBlocDataCopyWith<$Res> {
  factory _$$HomeBlocDataImplCopyWith(
          _$HomeBlocDataImpl value, $Res Function(_$HomeBlocDataImpl) then) =
      __$$HomeBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeeklyWeatherEntity? weeklyData,
      CurrentWeatherEntity? currentWeatherData});
}

/// @nodoc
class __$$HomeBlocDataImplCopyWithImpl<$Res>
    extends _$HomeBlocDataCopyWithImpl<$Res, _$HomeBlocDataImpl>
    implements _$$HomeBlocDataImplCopyWith<$Res> {
  __$$HomeBlocDataImplCopyWithImpl(
      _$HomeBlocDataImpl _value, $Res Function(_$HomeBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyData = freezed,
    Object? currentWeatherData = freezed,
  }) {
    return _then(_$HomeBlocDataImpl(
      weeklyData: freezed == weeklyData
          ? _value.weeklyData
          : weeklyData // ignore: cast_nullable_to_non_nullable
              as WeeklyWeatherEntity?,
      currentWeatherData: freezed == currentWeatherData
          ? _value.currentWeatherData
          : currentWeatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherEntity?,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataImpl implements _HomeBlocData {
  const _$HomeBlocDataImpl({this.weeklyData, this.currentWeatherData});

  @override
  final WeeklyWeatherEntity? weeklyData;
  @override
  final CurrentWeatherEntity? currentWeatherData;

  @override
  String toString() {
    return 'HomeBlocData(weeklyData: $weeklyData, currentWeatherData: $currentWeatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataImpl &&
            (identical(other.weeklyData, weeklyData) ||
                other.weeklyData == weeklyData) &&
            (identical(other.currentWeatherData, currentWeatherData) ||
                other.currentWeatherData == currentWeatherData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weeklyData, currentWeatherData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      __$$HomeBlocDataImplCopyWithImpl<_$HomeBlocDataImpl>(this, _$identity);
}

abstract class _HomeBlocData implements HomeBlocData {
  const factory _HomeBlocData(
      {final WeeklyWeatherEntity? weeklyData,
      final CurrentWeatherEntity? currentWeatherData}) = _$HomeBlocDataImpl;

  @override
  WeeklyWeatherEntity? get weeklyData;
  @override
  CurrentWeatherEntity? get currentWeatherData;
  @override
  @JsonKey(ignore: true)
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
