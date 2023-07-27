import 'package:application3/pages/color_picker.dart';
import 'package:application3/pages/counter_page.dart';
import 'package:application3/pages/dialogs_page.dart';
import 'package:application3/pages/login_page.dart';
import 'package:application3/pages/menu_pages.dart';
import 'package:application3/pages/splash_page.dart';
import 'package:application3/routes.dart';
import 'package:flutter/material.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (_) => SplashPage(),
    Routes.home: (_) => MenuPage(),
    Routes.login: (context) {
      final email = getArguments<String>(context);
      return LoginPage(
        email: email,
      );
    },
    Routes.counter: (_) => const CounterPage(),
    Routes.colorPicker: (_) => const ColorPicker(),
    Routes.dialogs: (_) => const DialogsPage(),
  };
}
