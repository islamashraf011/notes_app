import 'package:flutter/material.dart';

Future<dynamic> showdialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (context) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          Navigator.pop(context);
        },
      );
      return AlertDialog(
        content: Text(message),
      );
    },
  );
}
