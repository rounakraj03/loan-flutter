import 'package:flutter/material.dart';

class MessageHandler {
  MessageHandler._();

  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
}

void showSnackBar({required String? title}) {
  MessageHandler.scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
  MessageHandler.scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
    margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.orange.shade200,
    content: SizedBox(
      // height: 25,
      child: Text(
        title!,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1),
        textAlign: TextAlign.center,
      ),
    ),
    duration: const Duration(seconds: 3),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ));
}
