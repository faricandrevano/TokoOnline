import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/features/auth/auth.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

Route<dynamic> route(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: settings,
      );
    case RegisterPage.routeName:
      return CupertinoPageRoute(
        builder: (_) => const RegisterPage(),
        settings: settings,
      );
    default:
      return CupertinoPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found :('),
          ),
        );
      });
  }
}
