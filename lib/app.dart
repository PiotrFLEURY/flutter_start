import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/details/details.dart';
import 'package:flutter_start/presentation/home/home.dart';
import 'package:go_router/go_router.dart';

class FlutterStart extends StatelessWidget {
  FlutterStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'Flutter Start',
        color: Colors.blue,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: Home.route,
          builder: (BuildContext context, GoRouterState state) => const Home(),
          routes: [
            GoRoute(
              path: Details.route,
              builder: (BuildContext context, GoRouterState state) => Details(
                packageName: state.params['packageName']!,
              ),
            ),
          ]),
    ],
  );
}
