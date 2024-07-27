import 'package:injectable/injectable.dart';
import 'package:weather_app/data/repository/weather_repo.dart';
import 'package:weather_app/domain/base/usecase/single_usecase.dart';
import 'package:weather_app/domain/city/city_entity.dart';
import 'package:weather_app/domain/city/city_request.dart';

@injectable
class GetWeatherUseCase
    extends SingleUseCase<GetCityRequest, List<CityEntity>> {
  final WeatherRepository _repository;

  const GetWeatherUseCase({required WeatherRepository repository})
      : _repository = repository;
  @override
  Future<List<CityEntity>> task(GetCityRequest request) {
    return _repository.getCitiesByQuery(request);
  }
}
