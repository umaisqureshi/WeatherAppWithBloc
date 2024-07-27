import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/presentation/base/state/navigation_state.dart';
import '../bloc/base_bloc.dart';
import '../state/listenable_state.dart';
import '../state/pop_state.dart';
import '../state/replace_state.dart';
import 'screen_mixin.dart';

abstract class StatefulScreen<B extends BaseBloc> extends StatefulWidget {
  const StatefulScreen({Key? key}) : super(key: key);
}

abstract class ScreenState<B extends BaseBloc> extends State<StatefulScreen<B>>
    with ScreenMixin {
  late B bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => BlocListener(
        bloc: context.read<B>(),
        listenWhen: listenCondition,
        listener: (context, state) {
          handleState(context, state);
        },
        child: buildScreen(context),
      ),
    );
  }

  Widget buildScreen(BuildContext context);
  bool listenCondition(Object? previous, Object? current) {
    return current is ListenableState;
  }

  void onListenableState(BuildContext context, Object? state) async {}
  void navigateToRoute(
      BuildContext context, B bloc, NavigateState state) async {
    Object? result = await navigate(context, state);
    bloc.onNavigationResult(result);
  }

  void replaceRoute(BuildContext context, ReplaceState state) {
    replace(context, state);
  }

  void replace(BuildContext context, ReplaceState state) {
    context.go(
        Uri(
          path: state.path,
          queryParameters: state.queryParams,
        ).toString(),
        extra: state.extra);
  }

  Future<dynamic> navigate<T extends Object?>(
      BuildContext context, NavigateState state) async {
    return context.push(
        Uri(path: state.path, queryParameters: state.queryParams).toString(),
        extra: state.extra);
  }

  void pop(BuildContext context, Object? extra) {
    if (context.canPop()) {
      if (extra == null) {
        context.pop();
      } else {
        context.pop(extra);
      }
    }
  }

  void handleState(BuildContext context, Object? state) {
    if (state is NavigateState) {
      navigateToRoute(context, context.read<B>(), state);
      return;
    }
    if (state is ReplaceState) {
      replaceRoute(context, state);
      return;
    }
    if (state is PopState) {
      pop(context, state.extra);
      return;
    }
    onListenableState(context, state);
  }
}

abstract class AliveScreenState<B extends BaseBloc>
    extends State<StatefulScreen<B>>
    with ScreenMixin, AutomaticKeepAliveClientMixin {
  late B bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Builder(
      builder: (context) => BlocListener(
        bloc: context.read<B>(),
        listenWhen: listenCondition,
        listener: (context, state) {
          handleState(context, state);
        },
        child: buildScreen(context),
      ),
    );
  }

  Widget buildScreen(BuildContext context);
  bool listenCondition(Object? previous, Object? current) {
    return current is ListenableState;
  }

  void onListenableState(BuildContext context, Object? state) async {}
  void navigateToRoute(
      BuildContext context, B bloc, NavigateState state) async {
    Object? result = await navigate(context, state);
    bloc.onNavigationResult(result);
  }

  void replaceRoute(BuildContext context, ReplaceState state) {
    replace(context, state);
  }

  void replace(BuildContext context, ReplaceState state) {
    context.go(
        Uri(path: state.path, queryParameters: state.queryParams).toString(),
        extra: state.extra);
  }

  Future<dynamic> navigate<T extends Object?>(
      BuildContext context, NavigateState state) async {
    return context.push(
        Uri(path: state.path, queryParameters: state.queryParams).toString(),
        extra: state.extra);
  }

  void pop(BuildContext context, Object? extra) {
    if (context.canPop()) {
      if (extra == null) {
        context.pop();
      } else {
        context.pop(extra);
      }
    }
  }

  void handleState(BuildContext context, Object? state) {
    if (state is NavigateState) {
      navigateToRoute(context, context.read<B>(), state);
      return;
    }
    if (state is ReplaceState) {
      replaceRoute(context, state);
      return;
    }
    if (state is PopState) {
      pop(context, state.extra);
      return;
    }
    onListenableState(context, state);
  }
}
