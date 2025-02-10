import 'package:flutter/material.dart';
import 'package:go_route_prec/screen/home_page.dart';
import 'package:go_route_prec/layout_scafold.dart';
import 'package:go_route_prec/screen/profile_page.dart';
import 'package:go_route_prec/screen/settings.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "root");

bool get isLogedIn => true;
GoRouter routes = GoRouter(
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Something going wrong'),
    ),
    appBar: AppBar(
      title: Text('Something going wrong! Please go back!'),
    ),
  ),
  // redirect: (context, state) {
  //   if (isLogedIn) {
  //     return Routes.home;
  //   } else {
  //     return Routes.settings;
  //   }
  // },
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.home,
  routes: [
    // GoRoute(path: Routes.home,builder: (context, state) => HomePage(),),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            LayoutScafold(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => HomePage(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                path: Routes.settings,
                builder: (context, state) => SettingsPage(),
                routes: [
                  GoRoute(
                    path: Routes.profile,
                    pageBuilder: (context, state) => CustomTransitionPage(
                      child: ProfilePage(user: state.extra as User),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(
                        opacity:
                            CurveTween(curve: Curves.linear).animate(animation),
                        child: child,
                      ),
                    ),
                  )
                ]),
          ])
        ]),
    // GoRoute(
    //

    //   path: Routes.profile,

    //   pageBuilder: (context, state) => CustomTransitionPage(
    //     transitionDuration: Duration(seconds: 2),
    //     child: ProfilePage(user: state.extra as User),

    //    transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(

    //     opacity:CurveTween(curve: Curves.bounceIn).animate(animation) ),),
    // )
  ],
);

class Routes {
  Routes._();

  static String get initial => "/";
  static String get home => "/home";
  static String get erro => "/erro";
  static String get settings => "/setting";
  static String get logout => "/logut";
  static String get profile => "/profile";
  static String get nastedProfile => "$settings/$profile";
}
