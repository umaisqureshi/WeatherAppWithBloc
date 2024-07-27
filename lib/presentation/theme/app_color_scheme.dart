import 'package:flutter/material.dart';

abstract class AppColorScheme extends ColorScheme {
  const AppColorScheme._light({
    required Color primary,
    required Color onPrimary,
    required Color onSecondary,
    required Color background,
  }) : super.light(
            primary: primary,
            onPrimary: onPrimary,
            onSecondary: onSecondary,
            background: background);

  const AppColorScheme._dark({
    required Color primary,
    required Color onPrimary,
    required Color onSecondary,
    required Color background,
  }) : super.dark(
            primary: primary,
            onPrimary: onPrimary,
            onSecondary: onSecondary,
            background: background);

  factory AppColorScheme.light() {
    return const _LightColorScheme._();
  }

  factory AppColorScheme.dark() {
    throw const _DarkColorScheme._();
  }

  Color get backgroundColor;
}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme._()
      : super._light(
            primary: const Color(0xff2186AB),
            onPrimary: const Color(0xff08435A),
            onSecondary: const Color(0xff2186AB),
            background: Colors.white);

  @override
  final Color backgroundColor = Colors.white;
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme._()
      : super._dark(
            primary: const Color(0xff2186AB),
            onPrimary: const Color(0xff08435A),
            onSecondary: const Color(0xff2186AB),
            background: Colors.white);

  @override
  Color get backgroundColor => throw UnimplementedError();
}
