import 'package:flutter/cupertino.dart';

Future<int> showDialogWithCupertinoStyle(
  BuildContext context, {
  String title = '',
  String content = '',
}) async {
  final result = await showCupertinoDialog<int>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          child: Text('OK'),
          onPressed: () {
            Navigator.pop(context, 1);
          },
        ),
        CupertinoDialogAction(
          child: Text('so so'),
          onPressed: () {
            Navigator.pop(context, 2);
          },
        ),
        CupertinoDialogAction(
          child: Text("i'm bad"),
          onPressed: () {
            Navigator.pop(context, 3);
          },
        )
      ],
    ),
  );
  return result ?? 1;
}
