import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/view/game_view/game_view.dart';
import 'package:tabu/src/view/home_view/home_view.dart';
import 'package:tabu/src/view/pause_view/pause_view.dart';
import 'package:tabu/src/view/result_view/result_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(0, 180, 10, 10), // status bar color
  ));
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return const MyApp();
    },
  ));
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      color: Colors.white,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
