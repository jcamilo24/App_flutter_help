import 'package:flutter/material.dart';

import '../routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            /*Navigator.popUntil(context, (route) {
              final name = route.settings.name;
              if (name == Routes.initialRoute) {
                return true;
              }
              return false;
            });*/
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.initialRoute,
              (route) => false,
            );
          },
          child: Text('LOG OUT'),
        ),
      ),
    );
  }
}
