import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:gorouter_proj/pages/home.dart';
import 'package:gorouter_proj/pages/profile.dart';
import 'package:gorouter_proj/pages/search.dart';
import 'package:gorouter_proj/project/routes/app_route_constants.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter myrouter = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homepageRoute,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profilepageRoute,
          path: '/profile:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: Profile(
                userid: state.pathParameters['userid'] ?? '',
                username: state.pathParameters['username'] ?? '',
              ),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.searchpageRoute,
          path: '/search',
          pageBuilder: (context, state) {
            return MaterialPage(child: SearchPage());
          },
        ),
      ],

      errorPageBuilder: (context, state) {
        return MaterialPage(child: Center(child: Text("error")));
      },
    );

    return myrouter;
  }
}
