import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/mobx/counter.dart';

enum Actions { Increment, Add, Subtract }

// ignore: unused_element

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return const MyApp();
    },
  ));
}

final router = AppRouter();

//! my-app render side ****************************************************************
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<Counter>(create: (_) => Counter())],
      child: MaterialApp.router(
        // builder: (context, child) {
        //   return MediaQuery(
        //     child: child!,
        //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        //   );
        // },

        debugShowCheckedModeBanner: false,
        color: Colors.white,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
//! my-app render side ****************************************************************

// MediaQuery(
//           child: child!,
//           data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//         );