import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'transition/default_transition.dart';
import 'transition/page_transition.dart';

@injectable
class TransitionFactory {
  final DefaultTransition defaultTransition;

  const TransitionFactory({required this.defaultTransition});

  Page create(Widget screen, GoRouterState state) {
    PageTransition pageTransition;
    pageTransition = defaultTransition;
    return pageTransition.create(screen, state);
  }
}
