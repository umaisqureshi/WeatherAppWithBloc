import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/base/bloc/base_bloc.dart';

abstract class RouteScreenProvider<B extends BaseBloc> {
  final B bloc;
  const RouteScreenProvider({required this.bloc});

  Widget buildRoute(BuildContext context,GoRouterState state) {
    bloc.updateParameters(state.params);
    bloc.updateQueryParams(state.queryParams);
    bloc.updateExtra(state.extra);
    return build(context, state);
  }

  @protected
  Widget build(BuildContext context, GoRouterState state);
}
