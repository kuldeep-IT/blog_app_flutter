import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String contet) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(contet),
      ),
    );
}
