import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Format input into YYYY/MM/DD format
    String newText = newValue.text;
    if (newText.length >= 4 && newText[3] != '/') {
      newText = newText.substring(0, 4) + '/' + newText.substring(4);
    }
    if (newText.length >= 7 && newText[6] != '/') {
      newText = newText.substring(0, 7) + '/' + newText.substring(7);
    }
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
