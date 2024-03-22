import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HorizontalNumberPicker extends StatefulWidget {
  @override
  _HorizontalNumberPickerState createState() => _HorizontalNumberPickerState();
}

class _HorizontalNumberPickerState extends State<HorizontalNumberPicker> {
  int _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: NumberPicker(
        value: _currentValue,
        minValue: 0,
        maxValue: 150,
        step: 1,
        itemHeight: 80,
        axis: Axis.horizontal,
        onChanged: (value) => setState(() => _currentValue = value),
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.green),
        ),
      ),
    );
  }
}
