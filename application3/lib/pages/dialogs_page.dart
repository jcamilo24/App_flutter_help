import 'package:application3/dialogs/bottom_sheet_dialog.dart';
import 'package:application3/dialogs/confirm_dialog.dart';
import 'package:application3/dialogs/cupertino_dialog.dart';
import 'package:application3/dialogs/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text('show info dialog'),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => DialogContent(),
              );
            },
          ),
          ListTile(
            title: Text('show confirm dialog'),
            onTap: () async {
              final isOk = await showConfirmDialog(
                context,
                title: 'Are you sure?',
                dismissible: false,
              );
              print('is ok $isOk');
            },
          ),
          ListTile(
            title: Text('show cupertino dialog'),
            onTap: () async {
              final value = await showDialogWithCupertinoStyle(
                context,
                title: 'hola',
                content: 'How are you?',
              );
              print('value: $value');
            },
          ),
          ListTile(
            title: Text('show bottom sheet dialog'),
            onTap: () async {
              showBottomSheetDialog(context);
            },
          ),
          ListTile(
            title: Text('show custom dialog'),
            onTap: () {
              showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text('My dialog holiii'),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        )
      ],
    );
  }
}
