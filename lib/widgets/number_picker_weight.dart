import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HorizontalNumberPicker extends StatefulWidget {
  int currentValue = 50;
  @override
  _HorizontalNumberPickerState createState() => _HorizontalNumberPickerState();
}

class _HorizontalNumberPickerState extends State<HorizontalNumberPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: NumberPicker(
        value: widget.currentValue,
        minValue: 0,
        maxValue: 150,
        step: 1,
        itemHeight: 80,
        axis: Axis.horizontal,
        onChanged: (value) => setState(() => widget.currentValue = value),
        textStyle: const TextStyle(
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
