import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ErrorWidgetComponent<
    Bloc extends BlocBase<BlocState>,
    BlocState,
    CurrentState extends BlocState,
    ErrorState extends BlocState> extends StatelessWidget {
  const ErrorWidgetComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    onInit(context);
    return BlocBuilder<Bloc, BlocState>(
      builder: (_, state) {
        if (state.runtimeType == CurrentState) {
          return buildComponent(context, state as CurrentState);
        }
        if (state.runtimeType == ErrorState) {
          return buildError(context, state as ErrorState);
        }
        return buildEmpty(context);
      },
      buildWhen: (previous, current) => rebuildCondition(previous, current),
    );
  }

  void onInit(BuildContext context) {}

  Widget buildComponent(BuildContext context, CurrentState state);

  Widget buildEmpty(BuildContext context);
  Widget buildError(BuildContext context, ErrorState error);

  bool rebuildCondition(BlocState? previous, BlocState? current) {
    return current is CurrentState;
  }
}
