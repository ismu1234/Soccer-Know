import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sizer/sizer.dart';
import 'package:soccer_know/src/config/router/app_router.dart';
import 'package:soccer_know/src/core/theme/app_theme.dart';

import 'package:soccer_know/src/injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await dotenv.load(fileName: ".env");

  runApp(Sizer(builder: (context, orientation, deviceType) {
    return const MyApp();
  }));
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
      title: 'SoccerKnow',
      theme: AppTheme.theme,
      routerDelegate: router.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
