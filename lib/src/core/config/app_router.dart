import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:tabu/src/view/game_view/game_view.dart';
import 'package:tabu/src/view/home_view/home_view.dart';
import 'package:tabu/src/view/pause_view/pause_view.dart';
import 'package:tabu/src/view/result_view/result_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  // * for names
  replaceInRouteName: 'View,Route',

  routes: <AutoRoute>[
    AutoRoute(
      page: home_view,
      path: '/home_view',
      initial: true,
    ),
    AutoRoute(
      page: game_view,
      path: '/game_view',
    ),
    AutoRoute(
      page: result_view,
      path: '/result_view',
    ),
    AutoRoute(
      page: pause_view,
      path: '/pause_view',
    ),
  ],
)

/// AppRouter is a class that extends ` and is used to generate a Router` object
class AppRouter extends _$AppRouter {}
