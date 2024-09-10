import 'package:injectable/injectable.dart';
import 'package:weather_app/data/local/current_location_service.dart';
import 'package:weather_app/domain/base/usecase/supplier_usecase.dart';
import 'package:weather_app/presentation/module/home/model/location_model.dart';

@injectable
class GetUserCurrentLocationUseCase extends SupplierUseCase<LocationModel> {
  final UserCurrentLocationService _service;
  const GetUserCurrentLocationUseCase(
      {required UserCurrentLocationService service})
      : _service = service;
  @override
  Future<LocationModel> task() {
    return _service.determineCurrentPosition();
  }
}
