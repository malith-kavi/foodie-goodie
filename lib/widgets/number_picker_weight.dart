import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class HorizontalNumberPicker extends StatefulWidget {
  final int initialValue;
  final Function(int) onValueChanged;

  HorizontalNumberPicker({
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  _HorizontalNumberPickerState createState() => _HorizontalNumberPickerState();
}

class _HorizontalNumberPickerState extends State<HorizontalNumberPicker> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: _currentValue,
      minValue: 0,
      maxValue: 150,
      step: 1,
      itemHeight: 80,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      axis: Axis.horizontal,
      onChanged: (newValue) {
        setState(() {
          _currentValue = newValue;
        });
        widget.onValueChanged(newValue);
      },
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green),
      ),
    );
  }
}
