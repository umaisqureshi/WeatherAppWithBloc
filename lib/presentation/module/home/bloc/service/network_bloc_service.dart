import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:weather_app/presentation/module/home/bloc/home_bloc.dart';

class NetworkBlocService {
  final HomeBloc _bloc;
  const NetworkBlocService({required HomeBloc bloc}) : _bloc = bloc;

  void observe(event, emit) {
    observeNetwork();
  }

  void notifyStatus(NetworkNotify event, emit) {
    event.isConnected ? emit(NetworkSuccess()) : emit(NetworkFailure());
  }

  void observeNetwork() {
    ConnectivityResult? previousConnectivity;

    Connectivity().onConnectivityChanged.listen((value) {
      if (value.contains(previousConnectivity) == false) {
        previousConnectivity = value.last;
        if (value.contains(ConnectivityResult.none)) {
          _bloc.add(const NetworkNotify());
        } else {
          _bloc.add(const NetworkNotify(isConnected: true));
        }
      }
    });
  }
}
