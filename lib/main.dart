import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/infrastucture/app_dependency.dart';
import 'package:weather_app/infrastucture/routing/app_router.dart';
import 'package:weather_app/presentation/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createDependencyGraph();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = GetIt.instance.get();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.generateRoutes(),
    );
  }
}
