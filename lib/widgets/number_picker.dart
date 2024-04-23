import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberPicker extends StatefulWidget {
  int currentValue = 150;
  @override
  _CustomNumberPickerState createState() => _CustomNumberPickerState();
}

class _CustomNumberPickerState extends State<CustomNumberPicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NumberPicker(
          value: widget.currentValue,
          minValue: 0,
          maxValue: 200,
          haptics: true,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ), // Bold text style
          onChanged: (value) {
            setState(() {
              widget.currentValue = value;
            });
          },
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.green),
          ),
        ),
      ],
    );
  }
}
