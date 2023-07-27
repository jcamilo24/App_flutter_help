import 'package:application3/app_routes.dart';
import 'package:application3/pages/login_page.dart';
import 'package:application3/pages/menu_pages.dart';
import 'package:application3/routes.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.initialRoute,
      routes: appRoutes,
    );
  }
}
