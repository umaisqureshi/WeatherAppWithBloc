import 'package:flutter/material.dart';
import 'package:weather_app/presentation/extension/context_extension.dart';
import '../../theme/app_color_scheme.dart';

mixin ScreenMixin {
  AppColorScheme colorScheme(BuildContext context) {
    return context.appColorScheme;
  }

  TextTheme textTheme(BuildContext context) {
    return context.textTheme;
  }
}
