import 'package:weather_app/data/base/dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDto with _$CityDto implements Dto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CityDto({String? name, String? country}) = _CityDto;
  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}
