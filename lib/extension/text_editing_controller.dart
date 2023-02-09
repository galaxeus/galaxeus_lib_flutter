import 'package:flutter/material.dart'; 

extension TextEditingControllerExtension on TextEditingController {
  Future<void> write({
    required String newText,
    Duration delayDuration = const Duration(milliseconds: 100),
  }) async {
    List<String> characters = newText.characters.toList();
    for (var i = 0; i < characters.length; i++) {
      String character = characters[i];
      await Future.delayed(delayDuration);
      text += character;
    }
    return;
  }

  Future<void> delete({
    required String newText,
    Duration delayDuration = const Duration(milliseconds: 100),
  }) async {
    List<String> characters = newText.characters.toList().reversed.toList();
    for (var i = 0; i < characters.length; i++) {
      await Future.delayed(delayDuration);
      text = text.substring(0, text.length - 1);
    }
    return;
  }
}
