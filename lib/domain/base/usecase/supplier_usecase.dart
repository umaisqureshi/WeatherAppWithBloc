import 'package:weather_app/domain/exception/app_exception.dart';

import '../../base/use_case_result.dart';
import '../../base/usecase/usecase.dart';

abstract class SupplierUseCase<E> implements UseCase {
  const SupplierUseCase();

  Future<E> task();

  Future perform(UseCaseResult<E> result) async {
    try {
      E data = await task();
      result.onSuccess?.call(data);
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(AppException(message: e.toString()));
    }
    result.onFinished?.call();
  }
}
