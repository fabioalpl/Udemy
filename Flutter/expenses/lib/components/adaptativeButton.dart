import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  //const AdaptativeButton({super.key});

  final String label;
  final Function() onPressed;

  AdaptativeButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : ElevatedButton(
            child: Text(
              label,
              style: TextStyle(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            onPressed: onPressed,
          );
  }
}
